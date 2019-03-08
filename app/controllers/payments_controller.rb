class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount_cents,
      description:  "Help A Campaign!",
      currency:     @order.amount.currency
    )

    @categories_hash = @order.ticket_categories.group(:id).count
    @categories_hash.each do |key, value|
      @category = TicketCategory.find(key)
      new_available_tickets = @category.available_tickets - value
      @category.update(available_tickets: new_available_tickets)
    end
    @campaign = @order.ticket_categories.first.campaign

    # @funding_array = @order.ticket_categories.map do |ticket_category|
    #   (ticket_category.quantity - ticket_category.available_tickets) * ticket_category.price
    # end
    # @campaign.update(current_funding_amount: @funding_array.sum)
    @funding_array = @campaign.ticket_categories.map do |ticket_category|
      (ticket_category.quantity - ticket_category.available_tickets) * ticket_category.price
    end
    @campaign.update(current_funding_amount: @funding_array.sum)
    @order.update(payment: charge.to_json, state: 'paid')

    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  private

  def set_order
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end
end

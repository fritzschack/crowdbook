class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.where(state: 'paid')
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    @campaigns = Campaign.order("RANDOM()").limit(3)
  end

  def new
  end

  def create
    @order = Order.new
    @campaign = Campaign.find(order_params[:campaign_id])
    @order.user = current_user
    @order.state = 'pending'
    @categories = category_params.to_h.map { |key, value| [TicketCategory.find(key), value.to_i] }
    @order.amount = @categories.map { |category| category[1] * category[0].price }.sum
    @order.ticket_category_sku = @categories.map { |ids| ids[0].id }
    if @order.save
      @categories.each do |category|
        category[1].times do
          Ticket.create(order: @order, ticket_category: category[0])
        end
      end
      redirect_to new_order_payment_path(@order)
    else
      render 'campaigns/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:categories).permit!
  end

  def order_params
    params.require(:order).permit(:campaign_id)
  end
end

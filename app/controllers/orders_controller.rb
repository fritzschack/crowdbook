class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
    @order = Order.new
    @campaign = Campaign.find(order_params[:campaign_id])
    @order.user = current_user
    @order.status = 'waiting for payment'
    # We find the Ticket Category based on the id
    @categories = category_params.to_h.map { |key, value| [TicketCategory.find(key), value.to_i] }
    # We create a 'quantity' amount of tickets for each of the TicketCategories.
    if @order.save
      @categories.each do |category|
        category[1].times do
          Ticket.create(order: @order, ticket_category: category[0])
        end
      end
      redirect_to order_path(@order)
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

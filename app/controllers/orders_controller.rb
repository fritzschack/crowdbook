class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.where(state: 'paid')
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    @campaigns = Campaign.order("RANDOM()").limit(3)
    @tickets = []
    @order.tickets.each do |ticket|
      qrcode = RQRCode::QRCode.new("http://localhost:3000/tickets/#{ticket[:id]}")
      svg = qrcode.as_svg(offset: 0, color: '000',
                    shape_rendering: 'crispEdges',
                    module_size: 11)
      @tickets << svg
    end
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Your_filename",
        template: "orders/ticket.html.erb",
        layout: 'layouts/pdf.html.erb'
        # @html = get_html
        # @pdf = WickedPdf.new.pdf_from_string(@html)
        # send_data(@pdf, :filename => 'Tickets', type: 'application/pdf')
      end
    end # Excluding ".pdf" extension.
  end

  # def get_html
  #   render_to_string(
  #     template: "layouts/pdf.html.erb",
  #     orientation: "Landscape",
  #     page_size: "Letter",
  #     background: true,
  #     order: @order
  #     )
  # end

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

class TicketsController < ApplicationController
  def show
    @ticket = Ticket.find(params[:id])
    qrcode = RQRCode::QRCode.new("http://localhost:3000/tickets/#{@ticket.id}/edit")
    @svg = qrcode.as_svg(offset: 0, color: '000', shape_rendering: 'crispEdges', module_size: 11)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Your_filename", template: "tickets/ticket.html.erb", layout: 'layouts/pdf.html.erb'
        # @html = get_html
        # @pdf = WickedPdf.new.pdf_from_string(@html)
    end
        # send_data(@pdf, :filename => 'Tickets', type: 'application/pdf')
    end # Excluding ".pdf" extension.
  end

  def edit
    # if current_user != @tickets.campaign.user
    #   redirect_to root_path
    #   flash[:alert] = 'Not Gonna Happen'
    # end
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_params)
    redirect_to my_profile_path
  end
  private

  def ticket_params
    params.require(:ticket).permit(:ticket_used)
  end

end

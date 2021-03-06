class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy, :verify_private_campaign, :check_codeword]
  before_action :campaigns_backed, only: [:index, :show, :verify_private_campaign, :check_codeword]
  before_action :campaign_days_left, only: [:show, :verify_private_campaign, :check_codeword]

  skip_before_action :authenticate_user!, only: [:index, :show, :verify_private_campaign, :check_codeword]

  def index
    @campaigns = Campaign.where(is_private: false)
    if params[:name_query].present?
      @campaigns = @campaigns.where(
        "name @@ :name_query OR description @@ :name_query",
        name_query: "%#{params[:name_query]}%"
      )
    end

    if params[:location_query] == ''
      @campaigns = @campaigns.where.not(latitude: nil, longitude: nil)
    elsif params[:location_query]
      @campaigns = @campaigns.near(params[:location_query], 20)
    end

    if params[:musician_query].present? && params[:musician_query] != "any musician" && params[:musician_query] != "All musicians"
      musician = Musician.find(params[:musician_query])
      @campaigns = @campaigns.joins(:performances).where({ performances: { musician: musician } })
    end

    if params[:genre_query].present? && params[:genre_query] != "all" && params[:genre_query] != "All genres"
      @campaigns = @campaigns.where(
        "genre @@ :genre_query",
        genre_query: "%#{params[:genre_query]}%"
      )
    end

    @markers = @campaigns.map do |campaign|
      {
        lng: campaign.longitude,
        lat: campaign.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { campaign: campaign })
      }
    end
    render :index
  end

  def show
    @campaign = Campaign.find(params[:id])
    @campaign_creator = User.find(@campaign.user_id)
  end

  def new
    @campaign = Campaign.new
    @campaign_images = @campaign.photos.build
    @ticket_categories = params[:ticket_categories].nil? ? [TicketCategory.new] : params[:ticket_categories]
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    instance_array = []
    if @campaign.codeword != nil
      @campaign.is_private = true
    end
    if params[:ticket_categories].count.positive? && params[:campaign][:performances].count > 1 && params[:campaign][:photos]['image_url'] && @campaign.save
      params[:ticket_categories].each do |ticket_category|
        category = @campaign.ticket_categories.new(
          name: ticket_category[:name],
          description: ticket_category[:description],
          quantity: ticket_category[:quantity],
          price: ticket_category[:price],
          available_tickets: ticket_category[:quantity]
        )
        instance_array << category
      end

      params[:campaign][:photos]['image_url'].each do |cloudinary_url|
        @campaign.photos.create(image_url: cloudinary_url)
      end

      params[:campaign][:performances].each do |performance|
        if performance.match(/^[0-9]+$/) && Musician.exists?(performance.to_i)
          performance_instance = @campaign.performances.new(musician: Musician.find(performance.to_i))
          instance_array << performance_instance
        elsif performance.length >= 1
          @musician = Musician.new(name: performance)
          instance_array << @musician
          performance_instance = Performance.new(campaign: @campaign, musician: @musician)
          instance_array << performance_instance
        end
      end

      if instance_array.all?(&:valid?)
        instance_array.each(&:save!)
        redirect_to campaign_path(@campaign)
      end
    else
      # Send a variable to the new action that contains the amount of simplefields partials we need to render.
      @params = params[:ticket_categories].map do |ticket_category|
        TicketCategory.new(
          name: ticket_category[:name],
          description: ticket_category[:description],
          quantity: ticket_category[:quantity],
          price: ticket_category[:price],
          available_tickets: ticket_category[:quantity]
        )
      end
      @ticket_categories = params[:ticket_categories].nil? ? [TicketCategory.new] : @params
      render :new
    end
  end

  def edit
    if current_user != @campaign.user
      redirect_to root_path
      flash[:alert] = 'Not Gonna Happen'
    end
    @campaign = Campaign.find(params[:id])

  end

  def update
    @campaign.update(campaign_params)
    redirect_to my_profile_path
  end

  def destroy
    @campaign.destroy
    redirect_to my_profile_path
  end

  def new_ticket_category
    @ticket_category = TicketCategory.new
  end

  def delete_ticket_category
  end

  def verify_private_campaign
    @campaign_creator = User.find(@campaign.user_id)

    render :show if @campaign.is_private == false || current_user == @campaign_creator
  end

  def check_codeword
    @campaign_creator = User.find(@campaign.user_id)

    if params[:codeword][:input] == @campaign.codeword
      render :show
    else
      redirect_to verify_private_campaign_path
      flash[:alert] = 'Please enter the correct codeword.'
    end
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:name, :address, :description, :date, :url, :is_private?, :genre, :funding_goal, :campaign_end_date, :codeword)
  end

  def campaigns_backed
    @campaigns_backed = TicketCategory.joins(:orders).where({ orders: { user_id: current_user } }).map { |campaign| campaign.campaign_id }
  end

  def campaign_days_left
    @campaign_days_left = (@campaign.campaign_end_date - DateTime.now + 1).to_i
    if @campaign.campaign_end_date > DateTime.now
      @campaign_active = true
    else
      @campaign_active = false
    end
  end
end

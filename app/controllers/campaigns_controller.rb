class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  before_action :campaigns_backed, only: [:index, :show]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @campaigns = Campaign.all
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

    # if params[:min_price_query].present?
    #   min_price = params[:min_price_query].to_i
    #   @campaigns = @campaigns.where("price_per_day > #{min_price}")
    # end

    # if params[:max_price_query].present?
    #   max_price = params[:max_price_query].to_i
    #   @campaigns = @campaigns.where("price_per_day < #{max_price}")
    # end

    if params[:musician_query].present? && params[:musician_query] != "All musicians"
      musician = Musician.find(params[:musician_query])
      @campaigns = @campaigns.joins(:performances).where({ performances: { musician: musician } })
    end

    if params[:genre_query].present? && params[:genre_query] != "All genres"
      @campaigns = @campaigns.where(
        "genre @@ :genre_query",
        genre_query: "%#{params[:genre_query]}%"
      )
    end


    @markers = @campaigns.map do |campaign|
      {
        lng: campaign.longitude,
        lat: campaign.latitude
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
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    instance_array = []
    if @campaign.save
      params[:campaign][:categories].each do |ticket_category|
        category = @campaign.ticket_categories.new(
          name: ticket_category[:name],
          description: ticket_category[:description],
          quantity: ticket_category[:quantity],
          price: ticket_category[:price],
          available_tickets: ticket_category[:quantity],
        )
        instance_array << category
      end
      params[:campaign][:photos]['image_url'].each do |a|
        @campaign_images = @campaign.photos.create!(image_url: a)
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
      render :new
    end
  end

  def edit
    if current_user != @campaign.user
      redirect_to root_path
      flash[:alert] = 'Not Gonna Happen'
    end
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
    @musicians = Musician.all
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:name, :address, :description, :date, :url, :is_private?, :genre, :funding_goal, photos_attributes: [:id, :user_id, :image_url])
  end

  def campaigns_backed
    @campaigns_backed = TicketCategory.joins(:orders).where({ orders: { user_id: current_user } }).map { |campaign| campaign.campaign_id }
  end
end

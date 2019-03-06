class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    # @order = Order.new
  end

  def new
    @campaign = Campaign.new
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
          quantity: ticket_category[:quantity]
        )
        instance_array << category
      end
      params[:campaign][:performances].each do |performance|
        if Musician.exists?(performance.to_i)
          performance_instance = @campaign.performances.new(musician: Musician.find(performance.to_i))
          instance_array << performance_instance
        elsif performance.length >= 1
          musician = Musician.new(name: performance)
          instance_array << musician
          performance_instance = Performance.new(campaign: @campaign, musician: musician)
          instance_array << performance_instance
        end
      end
      if instance_array.all?(&:valid?)
        instance_array.each(&:save!)
        redirect_to campaign_path(@campaign)
      else
        render :new
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
    params.require(:campaign).permit(:name, :address, :description, :date, :url, :is_private?)
  end
end

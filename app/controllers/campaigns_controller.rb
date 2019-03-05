class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @campaigns = Campaign.all
  end

  def show
    @created_by = @campaign.user
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
      params[:campaign][:performances_attributes].each { |performance| @campaign.performances.create(musician: Musician.find(performance[:musician].to_i)) }
      raise
      redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end

  def edit
    if current_user.id != @campaign.user_id
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

  def new_performance_field
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

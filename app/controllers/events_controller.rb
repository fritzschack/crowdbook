class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @events = Event.all
  end

  def show
    @created_by = @event.user
  end

  def new
    @event = Event.new
    @event_images = @event.photos.build
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @user = current_user
    @user.is_host = true
    @user.save
    if @event.save
      params[:event][:photos_attributes]['0']['image_url'].each do |a|
        @event_images = @event.photos.create!(image_url: a)
      end
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    if current_user.id != @event.user_id
      redirect_to root_path
      flash[:alert] = 'Not Gonna Happen'
    end
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to my_profile_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :address, :description, :date, :url, :is_private?)
  end
end

class PerformancesController < ApplicationController
  def new
    @performance = Performance.new
  end

  def create
    @performance.event = Event.find(params[:event_id])
    @performance.event = Event.find(params[:musician_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

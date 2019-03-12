class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @campaigns = Campaign.order("date ASC").limit(9)
  end
end

class PagesController < ApplicationController
  layout "basic"
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @campaigns = Campaign.where(is_private: false).order("date ASC").limit(9)
  end
end

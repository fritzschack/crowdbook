class ProfilesController < ApplicationController
  def my_profile
    @orders = current_user.orders
    @campaigns = Campaign.where(user: current_user)
  end

  def show
    @user = User.find(params[:id])
  end
end

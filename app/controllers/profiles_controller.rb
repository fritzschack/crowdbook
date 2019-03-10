class ProfilesController < ApplicationController
  def my_profile
    @orders = current_user.orders
  end

  def show
    @user = User.find(params[:id])
  end
end

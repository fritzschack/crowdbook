class ProfilesController < ApplicationController
  def my_profile
    @orders = current_user.orders
  end

  def show
  end
end

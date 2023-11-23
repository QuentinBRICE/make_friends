class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @user = current_user
    @my_advertisements = current_user.advertisements
    @advertisements = current_user.rentals
  end
end

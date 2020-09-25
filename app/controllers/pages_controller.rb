class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @orders = @user.orders
  end
end

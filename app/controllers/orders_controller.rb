class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    
  end
end

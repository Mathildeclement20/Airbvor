class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    animal = Animal.find(params[:animal_id])
    @orders = animal.orders
  end

  # def new
  #   @order = Order.new
  #   @animal = Animal.find(params[:animal_id])
  # end
  
end

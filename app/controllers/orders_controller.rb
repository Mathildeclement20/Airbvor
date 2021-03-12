class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    animal = Animal.find(params[:animal_id])
    @orders = animal.orders
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @order = Order.new(order_params)
    @order.animal = @animal
    @order.user = current_user
    @order.status = 1
    if @order.save
      redirect_to orders_path
    else
      redirect_to animal_path(@animal), notice: "Veuillez renseigner la date de debut et de fin"
    end
  end

  private

  def order_params
    params.require(:order).permit(:start_date, :end_date)
  end
end

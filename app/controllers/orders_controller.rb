class OrdersController < ApplicationController
  # skip_before_action :verify_authenticity_
  before_action :authenticate_user!
  def index
    @orders = Order.where(user_id: current_user)
  end

  def create
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
    @items = @order.items
  end
  def destroy
    @order.destroy
    redirect_to orders_path,
    notice: "Order has been successfully deleted"
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.create(order_params)
    @order.restaurant = @restaurant
    if @order.save
      redirect_to @restaurant, notice: "Order added successfully"
    else
      flash[:alert] = @order.errors.full_messages.join(' , ')
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :description)
  end
end

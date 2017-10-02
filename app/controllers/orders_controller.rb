class OrdersController < ApplicationController
  # skip_before_action :verify_authenticity_
  before_action :authenticate_user!
  def index
    @orders = Order.where(user_id: current_user)
  end

  def show
      @order = Order.find(params[:id])
      @restaurant = @order.restaurant
      @items = @order.restaurant.items
      @ordered_items = @order.items
    end

  def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @order = Order.new
  end

  def create
      @restaurant = Restaurant.find(params[:restaurant_id])
  	@order = Order.new(order_params)
      @order.restaurant = @restaurant
      @order.user = current_user

      if @order.save
        redirect_to orders_path, notice: "Order added successfully"
      else
        flash[:alert] = @order.errors.full_messages.join(' , ')
        render :new
      end
    end

  def destroy
    @order.destroy
    redirect_to orders_path,
    notice: "Order has been successfully deleted"
  end
  private

  def order_params
    params.require(:order).permit(:name, :description)
  end
end

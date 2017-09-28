class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @items = @restaurant.items
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.new(order_params)
    @order.restaurant = @restaurant

    if @order.save
      flash[:notice] = "Order saved successfully."
      redirect_to orders_path
    else
      flash[:alert] = "Failed to save order."
      render :new
    end
  end

  def review_params
    params.require(:order).permit(:name, :description)
  end
end

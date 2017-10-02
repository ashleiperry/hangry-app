class ItemsController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @item = Item.find(params[:format])
    OrderItem.create(order: @order,item: @item)
    redirect_to order_path(@order)
  end
end

class ItemsController < ApplicationController
  def create
  @order = Order.find(params[:order_id])
  binding.pry
  @item = Item.find(params[:id])
  OrderItem.create(@order,@item)
  redirect_to order_path(@order)
end
end

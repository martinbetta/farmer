class OrderItemsController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def create

    @order_item = OrderItem.new(params_order_item)
    @order_item.product_id = params[:product_id]
    unit_price = Product.find(params[:product_id]).unit_price
    total_price = unit_price * @order_item.quantity
    @order_item.price = total_price

    if current_user.orders.find_by(status: "new")
      @order = current_user.orders.find_by(status: "new")
    else
      @order = Order.new
      @order.user = current_user
      @order.status = "new"
      @order.save
    end

    @order_item.order = @order
    @order_item.save
    
    redirect_to product_path(params[:product_id])
  end


  def delete
    
  end

  private

  def params_order_item
    params.require(:order_item).permit(:quantity)
  end
end

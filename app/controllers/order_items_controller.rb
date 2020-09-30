class OrderItemsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update, :destroy]

  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    @order_item = OrderItem.new(params_order_item)
    @order_item.product_id = params[:product_id]
    unit_price = Product.find(params[:product_id]).unit_price

    @order_item.price = unit_price

    @order = Order.setup_order(current_user)

    @order_item.order = @order
    @order_item.save

    redirect_to product_path(params[:product_id])
  end

  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.update(params_order_item)

    respond_to do |format|
      format.html
      format.json { render json: {
        order_item: @order_item,
        item_total_price: @order_item.total_price,
        subtotal: @order_item.order.subtotal,
        unit: @order_item.product.unit
      } }
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    respond_to do |format|
      format.html
      format.json {
        render json:
        {
          order_item: @order_item,
          item_total_price: @order_item.total_price,
          subtotal: @order_item.order.subtotal,
          cart_length: @order_item.order.order_items.length
        }
      }
    end
  end

  private

  def params_order_item
    params.require(:order_item).permit(:quantity)
  end
end

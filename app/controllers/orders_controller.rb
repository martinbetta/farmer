class OrdersController < ApplicationController
    

    def update
        order = Order.find params[:id]
        session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: order.order_items.map { |order_item|
                {
                    name: order_item.product.name,
                    amount: order_item.price_cents,
                    currency: 'eur',
                    quantity: order_item.quantity,
                }
            },
          success_url: order_url(order),
          cancel_url: order_url(order)
        )
        order.update(checkout_session_id: session.id, status: 'paying')
        redirect_to new_order_payment_path(order)
    end

    def show
        @order = Order.find(params[:id])
    end


end

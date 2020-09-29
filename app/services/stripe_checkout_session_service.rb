class StripeCheckoutSessionService

  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(status: 'paid')
    order.user.orders.push(Order.create(status: "new"))
  end

end
class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  monetize :price_cents
  
  def total_price
    self.price * self.quantity
  end
end

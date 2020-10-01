class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  monetize :price_cents

  def total_price_cents
    self.price_cents * self.quantity
  end

  def total_price
    ActionView::Base.new.humanized_money(self.price * self.quantity)
  end

  # def total_price_money
  #   @money = Money.new(self.price * self.quantity)
  #   ActionView::Base.new.humanized_money_with_symbol(@money, 'EUR'))
  # end
end

class Order < ApplicationRecord

  belongs_to :user
  has_many :order_items
  monetize :total_price_cents


  def self.setup_order(current_user)
    if current_user.orders.find_by(status: "new")
      current_user.orders.find_by(status: "new")
    else
      self.create user: current_user, status: "new"
    end
  end

  def subtotal
    if self.order_items.size > 1
      total = self.order_items.inject { |sum, current| sum.total_price_cents + current.total_price_cents }
      ActionView::Base.new.humanized_money(total)
    elsif self.order_items.size == 0
      0
    else
      self.order_items.first.total_price
    end
  end
end

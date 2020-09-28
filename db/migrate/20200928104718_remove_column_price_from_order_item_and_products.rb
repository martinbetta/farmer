class RemoveColumnPriceFromOrderItemAndProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_items, :price
    remove_column :products, :unit_price
  end
end

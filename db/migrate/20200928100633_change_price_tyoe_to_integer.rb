class ChangePriceTyoeToInteger < ActiveRecord::Migration[6.0]
  def change
    change_table :products do |t|
      t.monetize :unit_price, currency: { present: false }
    end
    change_table :order_items do |t|
      t.monetize :price, currency: { present: false }
    end
  end
end

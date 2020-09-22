class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :unit_price
      t.text :description
      t.string :unit
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

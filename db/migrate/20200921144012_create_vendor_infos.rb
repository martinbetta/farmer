class CreateVendorInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :vendor_infos do |t|
      t.text :description
      t.string :company_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

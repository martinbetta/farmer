class AddImageUrlToVendorInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :vendor_infos, :image_url, :string
  end
end

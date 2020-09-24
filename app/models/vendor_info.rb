class VendorInfo < ApplicationRecord
  belongs_to :user
  validates :company_name, :description, :image_url, presence: true
end

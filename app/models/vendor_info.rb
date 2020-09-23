class VendorInfo < ApplicationRecord
  belongs_to :user
  validates :company_name, :description, presence: true
end

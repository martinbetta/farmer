class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :products
  has_many :reviews
  has_one :vendor_info
  validates :first_name, :last_name, :address, :role, presence: true

  enum role: [ :buyer, :vendor ]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def avg_score
    all_scores = self.products.map {|product| product.avg_score > 0 ? product.avg_score : nil}

    total = all_scores.compact.inject(:+)

    if all_scores.size > 0
      total.to_f / all_scores.compact.size
    else
      0
    end
  end
end

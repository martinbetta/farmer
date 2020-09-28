class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :content, presence: true
  validates :rating, numericality: {only_integer: (1...5)}
end

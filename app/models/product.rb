class Product < ApplicationRecord

  include PgSearch::Model
  CATEGORIES = ['Fruits', 'Vegetables','Bread', 'Milk', 'Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other'].freeze
  belongs_to :user
  has_many :reviews
  has_one_attached :photo


  pg_search_scope :search_by_category_and_name,
    against: [:category, :name],
    using: {
      tsearch: { prefix: true }
    }
end

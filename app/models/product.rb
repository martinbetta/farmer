class Product < ApplicationRecord
  include PgSearch::Model
  CATEGORIES = ['Fruits', 'Vegetables','Breads', 'Milk and Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other'].freeze
  belongs_to :user

  pg_search_scope :search_by_category_and_name,
    against: [:category, :name],
    using: {
      tsearch: { prefix: true }
    }

end

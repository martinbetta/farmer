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

  # Product.last.avg_score

  def avg_score
    total = self.reviews.sum(:rating)

    if self.reviews.count > 0
      total.to_f / self.reviews.count
    else
      0
    end
  end
end

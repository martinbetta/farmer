class Product < ApplicationRecord
  include PgSearch::Model
  CATEGORIES = ['Fruits', 'Vegetables','Breads', 'Milk and Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other'].freeze
  belongs_to :user
end

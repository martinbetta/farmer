class Product < ApplicationRecord
  CATEGORIES = ['Fruits', 'Vegetables','Breads', 'Milk and Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other'].freeze
  belongs_to :user
end

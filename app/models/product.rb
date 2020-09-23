class Product < ApplicationRecord
  CATEGORIES = ['Fruits', 'Vegetables','Breads', 'Milk', 'Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other'].freeze
  belongs_to :user
end

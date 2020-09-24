# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
CATEGORIES = ['Fruits', 'Vegetables','Breads', 'Milk and Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other']

Product.destroy_all
VendorInfo.destroy_all
User.destroy_all

5.times do |i|
  user = User.create(
    email: "vendor_#{i}@mail.com",
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    role: 1
  )
  vendor = VendorInfo.create(
    description: Faker::Company.industry,
    company_name: Faker::Company.name,
    image_url: "https://source.unsplash.com/random",
    user: user
  )
  5.times do
    product = Product.new(
      name: Faker::Food.fruits,
      description: Faker::Food.description,
      category: CATEGORIES.sample,
      unit_price: rand(1..50),
      unit: Faker::Measurement.height(amount: "all"),
      user: user
    )
    product.save
  end
end

5.times do |i|
  user = User.create(
    email: "user_#{i}@mail.com",
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    role: 0
  )
end

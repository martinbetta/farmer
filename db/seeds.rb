# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)




require 'nokogiri'
require 'open-uri'
require 'faker'
require 'faker'
CATEGORIES = ['Fruits', 'Vegetables','Breads', 'Milk and Eggs', 'Juices', 'Wines', 'Boxes & Packs', 'Other']

VendorInfo.destroy_all
OrderItem.destroy_all
Product.destroy_all
Order.destroy_all
User.destroy_all


#vendors single
puts 'Creating single vendors...'
puts 'Creating single vendor 1'

user = User.create(
  email: "farmer_peter@gmail.com",
  password: "password",
  first_name: "Peter",
  last_name: "Johnson",
  address: "Girona",
  role: 1
  )
vendor = VendorInfo.create(
  description: "Peter's Organic Farm is located in the Province of Girona. Farmer Peter started the business here in 1987, and we’ve been growing organic fruits ever since. If you’re ever nearby, you’re more than welcome to come for a walk (the view, across fields and wood-shrouded hills, is a bit of a show-stopper). Or join us for a warm apple pie and a freshly squeezed juice at the Peter's Bistrot ;-)",
  company_name: "Peter's Organic Farm",
  image_url: "https://images.unsplash.com/photo-1535090467336-9501f96eef89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
  user: user
  )
product = Product.new(
    name: "Apples",
    description: "Organically grown apples from the Girona region",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1507260385058-676ee3f043e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
    user: user
    )
product.save
product = Product.new(
    name: "Prunes",
    description: "Organically grown prunes from the Girona region",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1447175025301-707b39e9146f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    user: user
    )
product.save
product = Product.new(
    name: "Pears",
    description: "Organically grown pears from the Girona region",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1453487021979-5b739b2849f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    user: user
    )
product.save
product = Product.new(
    name: "Peaches",
    description: "Organically grown peaches from the Girona region",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1532704868953-d85f24176d73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    user: user
    )

product.save
puts 'Creating single vendor 2'

user = User.create(
  email: "granja_de_lola@gmail.com",
  password: "password",
  first_name: "Dolores",
  last_name: "Lopez-Lopez",
  address: "Tarragona",
  role: 1
  )
vendor = VendorInfo.create(
  description: "Our purpose is to provide good nutrition, good health and happy times to you, our friends and customers, at our farm near Somerset West. Our farm is one of few in the country where you can buy and eat fresh organic produce that was harvested a few hours before. We believe that fresh organic fruits, vegetables and herbs provide many health and other benefits.
  Firstly, we do not use any toxic agricultural chemicals, like pesticides, insecticides or herbicides on our farm and we do not use any artificial colours, flavours or preservatives in our kitchen; we therefore assure you that we will not add to the toxic contamination that many people suffer from the consumption of industrialized foods that contain many toxic substances.
  Secondly, we enrich our soil with compost and other natural soil additives and we have developed a rich organic soil that contains billions of micro-organisms; this rich soil increases the quantity, the quality and the variety of nutrients in our produce and enables us to offer you food that is really nutritious.
  Thirdly, our rich organic soil also enhances the taste and the flavours of our produce and enables us to give you a delightful culinary experience as well as good nutrition.",
  company_name: "La Granja de Lola",
  image_url: "https://www.ayojon.mx/galeria/2018/04/43716_m.jpg",
  user: user
  )
product = Product.new(
    name: "Corn",
    description: "Organically grown corn from the Tarragona region",
    category: "Vegetables",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1551754655-cd27e38d2076?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    user: user
    )
product.save
product = Product.new(
    name: "Leek",
    description: "Organically grown leek from the Tarragona region",
    category: "Vegetable",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1576796086%2FGettyImages-963036852.jpg%3Fitok%3DKbuIdzN_",
    user: user
    )
product.save
product = Product.new(
    name: "Pears",
    description: "Organically grown pears from the Tarragona region",
    category: "Vegetables",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1514756331096-242fdeb70d4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    user: user
    )
product.save
product = Product.new(
    name: "Calçots",
    description: "Prize winning organically grown calçots from the Tarragona region",
    category: "Vegetables",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/2/25/Paret_de_cal%C3%A7ots.jpg",
    user: user
    )
product.save

puts 'Creating single vendor 3'

user = User.create(
  email: "OrganicGo@gmail.com",
  password: "password",
  first_name: "Mary",
  last_name: "McManus",
  address: "Vilanova i la Geltrú",
  role: 1
  )
vendor = VendorInfo.create(
  description: "At Cava Galore, we understand that the long production process of our cavas starts with the land and the vines. For this reason, our environmental awareness is understood as the result of the close ties between the process of making our products and our natural environment. The outcome of this effort is the fact that each day we are increasingly more respectful of the environment around us, thanks to our conviction and responsibility (this word is important; we believe we must take responsibility for our processes, as the environment belongs to us all, and it is the duty of each person to act in keeping with his/her possibilities). Proof of this responsibility resides in the fact that in 1999 we became the first cava company to earn the ISO14001 Certificate for Environmental Management. This environmental certificate was the result of many years of implementing improvements in each of the production processes, the underlying principle of which was prevention rather than treatment. Minimisation at the point of origin is key to all productive and environmental efficiency. It is a responsible stance towards our environment.",
  company_name: "Cava Galore",
  image_url: "https://i1.wp.com/www.winepleasures.com/wp-content/uploads/2018/12/Cava-tasting-1.jpg?ssl=1",
  user: user
  )
product = Product.new(
    name: "Cava Condal",
    description: "Our bestselling cava from the Barcelona region",
    category: "Wines",
    unit_price: rand(5..10),
    unit: "liter",
    image_url: "https://www.cofamavins.com/wp-content/uploads/Cami-de-Flors-Org.png",
    user: user
    )
product.save
product = Product.new(
    name: "Cava Rosé",
    description: "Pure Srinkly Pink Potential to brighten up your day",
    category: "Wines",
    unit_price: 15,
    unit: "liter",
    image_url: "https://5barricas.valenciaplaza.com/wp-content/uploads/2020/02/5b-200213-tantum-ergo-rose.jpg",
    user: user
    )
product.save
product = Product.new(
    name: "Cava Brut",
    description: "An attractive mix of Pinot Noir and Chardonnay",
    category: "Wines",
    unit_price: rand(1..5),
    unit: "liter",
    image_url: "https://www.cofamavins.com/wp-content/uploads/Dignitat-cava.png",
    user: user
    )
product.save

puts 'Creating single vendor 4'

user = User.create(
  email: "Bettaglio@gmail.com",
  password: "password",
  first_name: "Martín",
  last_name: "Bettaglio",
  address: "Altafulla",
  role: 1
  )
vendor = VendorInfo.create(
  description: "Bettaglio Bread is proud to use organic and local ingredients from the cold-pressed, extra-virgin 100% Italian olive oil down to the unsalted butter, artisanally made from milk sourced from pasture-fed cows in Britain. Most of our flour is organic and stone ground in Molina Tarragona, a mill in Altafulla dating back to medieval times.
  Using organic flours means every batch is different, requiring the baker’s keen and observant eye like an orchestra conductor to harmoniously pull every element together.
  With no added soya or gluten, it is entirely in the hands of the baker to effect the miracle of transforming soft powder to dense loaves. Every week we receive a different batch of flour, and every week we need to think about how that particular flour is going to work. Being the product of the soil and the weather, each batch will react slightly differently to water, yeast and temperature.",
  company_name: "Bettaglio Bread",
  image_url: "https://www.theladders.com/wp-content/uploads/baker_190422-800x450.jpg",
  user: user
  )
product = Product.new(
    name: "Barra Pirineu",
    description: "A meal's not a meal without this traditional barra on your dining table",
    category: "Bread",
    unit_price: rand(3..5),
    unit: "loaf",
    image_url: "https://www.salamanca24horas.com/images/showid/3133090",
    user: user
    )
product.save
product = Product.new(
    name: "Coca de Cristal",
    description: "Our coca is made with organically farmed spelt and a lot of love",
    category: "Bread",
    unit_price: 9,
    unit: "loaf",
    image_url: "https://4.bp.blogspot.com/-2pnWhecvt8Y/Uy4U-s4IfII/AAAAAAAAFJc/8J5PEn5DU44/s1600/pan+de+cristal+065.jpg",
    user: user
    )
product.save
product = Product.new(
    name: "Palmera de chocolate",
    description: "A generously sized palmera dipped in high quality chocolate",
    category: "Bread",
    unit_price: rand(1..5),
    unit: "piece",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbMEYFzjGavmhciXrHtvl1o6gBhKUrnYScDg&usqp=CAU",
    user: user
    )
product.save

puts 'Creating single vendor 5'

user = User.create(
  email: "SauvageSuave@gmail.com",
  password: "password",
  first_name: "Kevin",
  last_name: "Sauvage",
  address: "Granollers",
  role: 1
  )
vendor = VendorInfo.create(
  description: "We run a small scale farme outside, but close to Barcelona. Our specialisation is egg production with the best birds in Spain. Our egg yolks are more yellow than the sun.",
  company_name: "Oeufs Sauvages",
  image_url: "https://firehouse.studio/PaulOM/wp-content/uploads/2017/09/Organic_Egg_Farmer.jpg",
  user: user
  )
product = Product.new(
    name: "Ostrich eggs",
    description: "Proteine bombs for pros!",
    category: "Eggs",
    unit_price: 10,
    unit: "a pair",
    image_url: "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_1460,h_1947/at%2Farchive%2Fd0067ce854eb9ef5d249850ddadb741c42a028a8",
    user: user
    )
product.save
product = Product.new(
    name: "Quail eggs",
    description: "Organic quail eggs from happy hens",
    category: "Eggs",
    unit_price: 5,
    unit: "a dozen",
    image_url: "https://lekkertafelen.nl/wp-content/uploads/2016/03/Kwarteleieren.jpg",
    user: user
    )
product.save
product = Product.new(
    name: "Goose eggs",
    description: "Premium quality organic eggs from wild geese",
    category: "Eggs",
    unit_price: rand(3..5),
    unit: "a dozen",
    image_url: "https://www.carrfarm.org/wp-content/uploads/2018/01/20180126_193903.jpg",
    user: user
    )
product.save

puts 'Creating single vendor 6'

user = User.create(
  email: "farmer_marin@gmail.com",
  password: "password",
  first_name: "Marin",
  last_name: "Bibot",
  address: "Sant Cugat de Vallès",
  role: 1
  )
vendor = VendorInfo.create(
  description: "Marin's Orchard is located in the Province of Barcelona. Marin started the business here in 1987, and we’ve been growing organic fruits ever since. If you’re ever nearby, you’re more than welcome to come for a walk (the view, across fields and wood-shrouded hills, is a bit of a show-stopper). Or join us for a warm apple pie and a freshly squeezed juice at the Peter's Bistrot ;-)",
  company_name: "Marin's Orchard",
  image_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/06/22/11/strawberry-farm-worker.jpg",
  user: user
  )
product = Product.new(
    name: "Apples Royal Gala",
    description: "Royal Gala from the Barcelona region",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://www.dw.com/image/47425871_401.jpg",
    user: user
    )
product.save
product = Product.new(
    name: "Prunes",
    description: "Perfect prunes to boost your digestive system",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1503267509980-772860efc568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
    user: user
    )
product.save
product = Product.new(
    name: "Strawberries",
    description: "Super sumptuous and healthy strawberries",
    category: "Fruits",
    unit_price: rand(1..5),
    unit: "kg",
    image_url: "https://images.unsplash.com/photo-1522865389096-9e6e525333d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
    user: user
    )
product.save


# buyers
# buyers general

5.times do |i|
  user = User.create(
    email: "user_#{i}@mail.com",
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    role: 0
  )

  3.times do
    order = Order.create(
      status: "pending",
      user: user,
      confirmation_date: Date.today,
      delivery_date: Date.today + 5
    )

    3.times do |o|
      orderitem = OrderItem.create!(
        price: rand(1..40),
        quantity: rand(1..10),
        product: Product.all.sample,
        order: order
      )
    end
  end
end































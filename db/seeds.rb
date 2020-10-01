

VendorInfo.destroy_all
OrderItem.destroy_all
Product.destroy_all
Order.destroy_all
User.destroy_all

require 'nokogiri'
require 'open-uri'

#vendors single
puts 'Creating single vendors...'
puts 'Creating single vendor 1'



# fruits
p 'creating fruitsssssssssssssssssssssssssssssssssssssssssssssssssss------------------------------------------------'

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
  image_url: "https://images.unsplash.com/photo-1599594202097-b82bcbd6be28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80",
  user: user
  )
html_file = open("https://fruitbrothers.com.au/product-category/fruit/").read
html_doc = Nokogiri::HTML(html_file)
html_doc.search('.product').first(30).each do |card|
  p 'creating link'
  link = card.search('.woocommerce-LoopProduct-link').attribute('href').value
  p link
  p ' search show page'
  html_file_description = open(link).read
  html_doc_desc = Nokogiri::HTML(html_file_description)
  p "creating title"
  title = html_doc_desc.search('.product_title').text
  p title
  p "creating image"
  image = html_doc_desc.search('.wp-post-image').attribute('src').value
  p image
  p "creating description"
  desc = html_doc_desc.search('.woocommerce-product-details__short-description > p').text
  p desc
  p "creating first product"
  product = Product.new(
    name: title,
    description: desc,
    category: "fruits",
    unit_price: rand(3..5),
    unit: "loaf",
    image_url: image,
    user: user
    )
  product.save
  p ' '
  p ' '
end








p "creating vegetablessssssssssssssssssssssssssssssssssssssssssssssssssssss---------------------------------------------------"

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
  image_url: "https://cdn.pixabay.com/photo/2016/11/14/02/58/agriculture-1822450_960_720.jpg",
  user: user
  )


html_file = open("https://fruitbrothers.com.au/product-category/vegetables/").read
html_doc = Nokogiri::HTML(html_file)
html_doc.search('.product').first(30).each do |card|
  p 'creating link'
  link = card.search('.woocommerce-LoopProduct-link').attribute('href').value
  p link
  p ' search show page'
  html_file_description = open(link).read
  html_doc_desc = Nokogiri::HTML(html_file_description)
  p "creating title"
  title = html_doc_desc.search('.product_title').text
  p title
  p "creating image"
  image = html_doc_desc.search('.wp-post-image').attribute('src').value
  p image
  p "creating description"
  desc = html_doc_desc.search('.woocommerce-product-details__short-description > p').text
  p desc
  p "creating first product"
  product = Product.new(
    name: title,
    description: desc,
    category: "vegetables",
    unit_price: rand(3..5),
    unit: "loaf",
    image_url: image,
    user: user
    )
  product.save
  p ' '
  p ' '

end









p 'champagnesssssssssssssssssssssssssssssssssssssssss------------------------------------------------------------------'
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
  image_url: "https://images.unsplash.com/photo-1589923188900-85dae523342b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  user: user
  )

  html_file = open("https://www.waitrosecellar.com/champagne-and-sparkling/type").read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.productCard').first(30).each do |card|
    p 'creating link'
    link = card.search('.productImage > a').attribute('href').value
    p link
    p ' search show page'
    html_file_description = open(link).read
    html_doc_desc = Nokogiri::HTML(html_file_description)
    p "creating title"
    title = html_doc_desc.search('.productName').text
    p title
    p "creating image"
    image = html_doc_desc.search('.mainImage > img').attribute('src').value
    p image
    p "creating"
    desc = html_doc_desc.search('.detailsLeft > p').text
    p desc
    p "creating first product"
    product = Product.new(
      name: title,
      description: desc,
      category: "Champagne",
      unit_price: rand(3..5),
      unit: "btl",
      image_url: image,
      user: user
      )
    product.save
    p ' '
    p ' '

  end






  p 'winessssssssssssssssssssssssssssssssssssssssssssssssss------------------------------------------------------------------'
  puts 'Creating single vendor '

  user = User.create(
    email: "OrgannicGo@gmail.com",
    password: "password",
    first_name: "Juan",
    last_name: "Vasquez",
    address: "barcelona",
    role: 1
    )
  vendor = VendorInfo.create(
    description: "At sitges wines, we understand that the long production process of our cavas starts with the land and the vines. For this reason, our environmental awareness is understood as the result of the close ties between the process of making our products and our natural environment. The outcome of this effort is the fact that each day we are increasingly more respectful of the environment around us, thanks to our conviction and responsibility (this word is important; we believe we must take responsibility for our processes, as the environment belongs to us all, and it is the duty of each person to act in keeping with his/her possibilities). Proof of this responsibility resides in the fact that in 1999 we became the first cava company to earn the ISO14001 Certificate for Environmental Management. This environmental certificate was the result of many years of implementing improvements in each of the production processes, the underlying principle of which was prevention rather than treatment. Minimisation at the point of origin is key to all productive and environmental efficiency. It is a responsible stance towards our environment.",
    company_name: "Cava Galore",
    image_url: "https://images.unsplash.com/photo-1589923188900-85dae523342b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    user: user
    )
    html_file = open("https://www.waitrosecellar.com/all-wines/all-countries/french-wine").read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.productCard').first(30).each do |card|
      p 'creating link'
      link = card.search('.productImage > a').attribute('href').value
      p link
      p ' search show page'
      html_file_description = open(link).read
      html_doc_desc = Nokogiri::HTML(html_file_description)
      p "creating title"
      title = html_doc_desc.search('.productName').text
      p title
      p "creating image"
      image = html_doc_desc.search('.mainImage > img').attribute('src').value
      p image
      p "creating"
      desc = html_doc_desc.search('.detailsLeft > p').text
      p desc
      p "creating first product"
      product = Product.new(
        name: title,
        description: desc,
        category: "Wines",
        unit_price: rand(3..5),
        unit: "btl",
        image_url: image,
        user: user
        )
      product.save
      p ' '
      p ' '

    end




   # herb and spice
p 'creating herb and spicessssssssssssssssssssssssssssssssss------------------------------------------------'

user = User.create(
  email: "farmcer_peter@gmail.com",
  password: "password",
  first_name: "Peter",
  last_name: "Johnson",
  address: "Girona",
  role: 1
  )
vendor = VendorInfo.create(
  description: "Peter's Organic Farm is located in the Province of Girona. Farmer Peter started the business here in 1987, and we’ve been growing organic fruits ever since. If you’re ever nearby, you’re more than welcome to come for a walk (the view, across fields and wood-shrouded hills, is a bit of a show-stopper). Or join us for a warm apple pie and a freshly squeezed juice at the Peter's Bistrot ;-)",
  company_name: "Peter's Organic Farm",
  image_url: "https://images.unsplash.com/photo-1599594202097-b82bcbd6be28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80",
  user: user
  )
html_file = open("https://fruitbrothers.com.au/product-category/herbs-spices/").read
html_doc = Nokogiri::HTML(html_file)
html_doc.search('.product').first(30).each do |card|
  p 'creating link'
  link = card.search('.woocommerce-LoopProduct-link').attribute('href').value
  p link
  p ' search show page'
  html_file_description = open(link).read
  html_doc_desc = Nokogiri::HTML(html_file_description)
  p "creating title"
  title = html_doc_desc.search('.product_title').text
  p title
  p "creating image"
  image = html_doc_desc.search('.wp-post-image').attribute('src').value
  p image
  p "creating description"
  desc = html_doc_desc.search('.woocommerce-product-details__short-description > p').text
  p desc
  p "creating first product"
  product = Product.new(
    name: title,
    description: desc,
    category: "vegetable",
    unit_price: rand(3..5),
    unit: "loaf",
    image_url: image,
    user: user
    )
  product.save
  p ' '
  p ' '

positive_reviews = ["Nice product, awesome quality","Very fresh and cheap"," Incredible","I wouldn't recommend", "Truly very healthy products", "Ok, but nothing fancy", "I Love Organigo, cheap and fresh", "Amazing products, I love it
I do my shopping every week"]

100.times do
review = Review.create(
  content: positive_reviews.sample,
  rating: (3..5).to_a.sample,
  product_id: Product.all.sample.id,
  user_id: User.all.sample.id
  )
end

negative_reviews = ["Horrible product","I hate it, I won't buy again"," Bad service","I wouldn't recommend", "The service is terrible", "I disliked the experience"]

30.times do
review = Review.create(
  content: negative_reviews.sample,
  rating: (1..2).to_a.sample,
  product_id: Product.all.sample.id,
  user_id: User.all.sample.id
  )
end

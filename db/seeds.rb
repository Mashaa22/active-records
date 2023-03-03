# Creates fake data to dataabase
# require 'faker'


puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
# user1 = User.create(name: Faker::Name.name)
# user2 = User.create(name: Faker::Name.name)
# user3 = User.create(name: Faker::Name.name)
user1 = User.create(name: "Kinuzs 1")
user2 = User.create(name: "Kinuzs 2")
user3 = User.create(name: "Kinuzs 3")

puts "Creating products..."
product1 = Product.create(name: "Staples", price: 10)
product2 = Product.create(name: "Chalks", price: 15)
product3 = Product.create(name: "Dust", price: 5)
product4 = Product.create(name: "BPens", price: 2)
product5 = Product.create(name: "Duct Tape", price: 3)

puts "Creating reviews..."

review1 = Review.create(star_rating: 5, comment: "Good product", user_id: user1.id, product_id: product1.id)
review2 = Review.create(star_rating: 4, comment: "It broke in a day", user_id: user1.id, product_id: product2.id)
review3 = Review.create(star_rating: 2, comment: "Awsome", user_id: user2.id, product_id: product4.id)
review4 = Review.create(star_rating: 3, comment: "Satisfied", user_id: user2.id, product_id: product3.id)


puts "completed🌱"
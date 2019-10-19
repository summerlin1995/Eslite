# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


#seed user
puts 'Creating user'
users_attributes = [
  {
    first_name: "John" ,
    last_name: "Smith" ,
    email: "Test123@gmail.com",
    password: "test123",
  }
]


# seed the products
puts 'Cleaning data base...'
Product.destroy_all
ProductPhoto.destroy_all

puts 'Creating Products'
product_attributes = [
  {
    name: "The Unbearable Lightness of Being",
    SKU: 1234567890,
    status: "進貨中",
    published: true,
    price: 280
    original_price: 320
  },
  {
    name: "Identity",
    SKU: 0987654321,
    status: "上架",
    published: true,
    price: 220
    original_price: 280
  },
  {
    name: "The Book of Laughter and Forgetting",
    SKU: 1112223456,
    status: "下架",
    published:  false,
    price: 150
    original_price: 250
  },
]

product_attributes.each do |product|
  new_product = Product.new(product)
  new_product.save!
  puts 'Product created!!'
end

img1 = "https://books.google.com.tw/books/content?id=ibJFPwAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70e79onKlzbWqllHoK62UpGY0rloMNOIA3z1hFN5IrwTUpQOxKqqp49wJIqpLijJaCYtpLoj3Z_Wj94LdUNI4YudzcbJcWVqYF3R615WQFlMPejxvbhnAvoRkj9e5e9zD2BQAVz"
img2 = "https://books.google.com.tw/books/content?id=CVOlPwAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73uvmtoUmRadBeZD4htGsuzd9Wr6TnwUrjOvwplD1hRsUjoJkEjwRlF7QbDc_rStaEdCCihNM9pakMLWKQe5VSlXG9nvHqSebXxTCVDdcbRQHeo4Y4nOXPMryCzR1mpdogEDjlu"
img3 = "https://books.google.com.tw/books/content?id=ZpupPwAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72kxDAM762QKzmspj50p3gH6ZS0hvt9zHejYaA3xbYP1VZpA-abRDojewz-Up6hBlOzJA0_S4B3OAYZhljNpqCbTew7xMJ3dsESqiJmUSrD33f8G4u5rwaWNyzv-t7Jy8b7c_4k"







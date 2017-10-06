# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     zip_code: "19103",
#     username: Faker::Internet.unique.user_name(6..12),
#     email: Faker::Internet.email,
#     password: "password1"
#   )
# end

# 5.times do
#   Restaurant.create!(
#     name: "#{Faker::Food.unique.ingredient} Restaurant",
#     address: "#{Faker::Address.street_address}",
#     city: "Philadelphia",
#     state: "PA",
#     zip_code: "19103",
#     telephone_number: "215988#{Faker::PhoneNumber.subscriber_number(4)}",
#     hours_of_operation:"11am-10pm"
#   )
# end
#   15.times do
#     Item.create!(
#       name: Faker::Food.unique.dish,
#       restaurant_id: 11
#     )
# end

Restaurant.create!(
  name: "McDonalds",
  address: "1706 Walnut Street",
  city: "Philadelphia",
  state: "PA",
  zip_code: "19103",
  telephone_number: "(215) 545-9574",
  hours_of_operation:"12am-11pm"
)

Item.create!(
  name: "Fruit N' Yogurt Parfait" ,
  restaurant_id: 1
)
Item.create!(
  name: "Egg McMuffin" ,
  restaurant_id: 1
)
Item.create!(
  name: "Egg White Delight McMuffin" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage McMuffin" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage McMuffin with Egg" ,
  restaurant_id: 1
)
Item.create!(
  name: "Bacon, Egg, & Cheese Biscuit" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage Biscuit" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage Biscuit with Egg" ,
  restaurant_id: 1
)
Item.create!(
  name: "Steak, Egg & Cheese Biscuit" ,
  restaurant_id: 1
)
Item.create!(
  name: "Bacon, Egg, & Cheese McGriddles" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage McGriddles" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage, Egg, & Cheese McGriddles" ,
  restaurant_id: 1
)
Item.create!(
  name: "Bacon, Egg, & Cheese Bagel" ,
  restaurant_id: 1
)
Item.create!(
  name: "Big Breakfast" ,
  restaurant_id: 1
)
Item.create!(
  name: "Big Breakfast with Hotcakes" ,
  restaurant_id: 1
)
Item.create!(
  name: "Hotcakes" ,
  restaurant_id: 1
)
Item.create!(
  name: "Hotcakes and Sausage" ,
  restaurant_id: 1
)
Item.create!(
  name: "Sausage Burrito" ,
  restaurant_id: 1
)
Item.create!(
  name: "Hash Browns" ,
  restaurant_id: 1
)
Item.create!(
  name: "Fruit & Maple Oatmeal" ,
  restaurant_id: 1
)

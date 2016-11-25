# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meal.create( name: 'Bean and Pea Soup', description: 'creamy and hearty soup', cuisine: 'North American', chef_id: 2, price: 5.00)
Meal.create( name: 'Turkey Burger', description: 'Lean and Healthy', cuisine: 'North American', chef_id: 2, price: 6.00)
Meal.create( name: 'Chicken Tikka Masala', description: 'Buttery savory curry', cuisine: 'Indian', chef_id: 3, price: 7.00)
Meal.create( name: 'Spanish Paella', description: 'Rice dish with various meats', cuisine: 'Spanish', chef_id: 3, price: 8.00)
Meal.create( name: 'Fish Tacos', description: 'Tacos with fish', cuisine: 'Mexican', chef_id: 2, price: 5.00)

Order.create( patron_id: 2, meal_id: 3, quantity: 1, total_price: 10.00, destination_address: '1705 Guadalupe', delivery_time: '2016-11-28 12:00:00')
Order.create( patron_id: 1, meal_id: 2, quantity: 1, total_price: 10.00, destination_address: '1705 Guadalupe', delivery_time: '2016-11-28 12:00:00')
Order.create( patron_id: 3, meal_id: 4, quantity: 1, total_price: 10.00, destination_address: '1705 Guadalupe', delivery_time: '2016-11-28 12:00:00')
Order.create( patron_id: 2, meal_id: 3, quantity: 1, total_price: 10.00, destination_address: '1705 Guadalupe', delivery_time: '2016-11-28 12:00:00')
Order.create( patron_id: 4, meal_id: 5, quantity: 1, total_price: 10.00, destination_address: '1705 Guadalupe', delivery_time: '2016-11-28 12:00:00')

User.create( first_name: 'rob', last_name: 'roy', email: 'rob@rob.com', password: 'rob', bio: 'food lover', street_address: '1714 Dove Haven', zip_code: 78727)
User.create( first_name: 'alice', last_name: 'aliceman', email: 'alice@alice.com', password: 'alice', bio: 'food lover', street_address: '1714 Dove Haven', zip_code: 78727)
User.create( first_name: 'matt', last_name: 'mattman', email: 'matt@matt.com', password: 'matt', bio: 'food lover', street_address: '1714 Dove Haven', zip_code: 78727)
User.create( first_name: 'jess', last_name: 'jessman', email: 'jess@jess.com', password: 'jess', bio: 'food lover', street_address: '1714 Dove Haven', zip_code: 78727)
User.create( first_name: 'rick', last_name: 'rickman', email: 'rick@rick.com', password: 'rick', bio: 'food lover', street_address: '1714 Dove Haven', zip_code: 78727)

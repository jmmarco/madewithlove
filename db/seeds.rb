# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arturo = User.create( first_name: 'Arturo', last_name: 'Gonzalez', email: 'arturo92@aol.com', password: 'password', bio: 'Soup lover', street_address: '2415 San Gabriel St', zip_code: 78705, chef_avatar: "/images/chefs/arturo_chef.jpg")
bill = User.create( first_name: 'Bill', last_name: 'Trotter', email: 'bill-trott@compuserve.com', password: 'password', bio: 'food lover', street_address: '906 W 17th St', zip_code: 78701, chef_avatar: "/images/chefs/bill_chef.jpg")
deppika = User.create( first_name: 'Deppika', last_name: 'Chopra', email: 'deppika@hotmail.com', password: 'password', bio: 'Curry lover', street_address: '612 Nueces St', zip_code: 78701, chef_avatar: "/images/chefs/deppika_chef.jpg")
kate = User.create( first_name: 'Kate', last_name: 'Manson', email: 'katie76@gmail.com', password: 'password', bio: 'Dessert lover', street_address: '806 W 12th St, Austin', zip_code: 78701, chef_avatar: "/images/chefs/katie_chef.jpg")
sally = User.create( first_name: 'Sally', last_name: 'Rickman', email: 'srickman@gmail.com', password: 'password', bio: 'Veggie lover', street_address: '1105 E 6th St', zip_code: 78702, chef_avatar: "/images/chefs/sally_chef.jpg" )
teresa = User.create( first_name: 'Teresa', last_name: 'Saucer', email: 'tsaucer81@att.com', password: 'password', bio: 'Italian sauce lover', street_address: '1101 South Congress Avenue', zip_code: 78704, chef_avatar: "/images/chefs/teresa_chef.jpg" )

burger = Meal.new(name: 'Bacon Burger', description: 'ground meat between bread', cuisine: 'Americana', price: 5.00, seed_image: "/images/meals/burger.jpeg" )

burger.chef = arturo
burger.save

bill_order = Order.new
bill_order.meal = burger
bill_order.patron_id = bill.id
bill_order.quantity = 1
bill_order.total_price = bill_order.meal.price * bill_order.quantity
bill_order.save


sandwich = Meal.new(name: 'Tuna Sandwich', description: 'fresh tuna with toasted bread', cuisine: 'Americana', price: 5.00, seed_image: "/images/meals/ceviche_tuna_sandwich.jpeg" )

sandwich.chef = bill
sandwich.save

arturo_order = Order.new
arturo_order.meal = sandwich
arturo_order.patron_id = arturo.id
arturo_order.quantity = 1
arturo_order.total_price = arturo_order.meal.price * arturo_order.quantity
arturo_order.save

pizza = Meal.new(name: 'Corn Pizza', description: 'Pizza with corn', cuisine: 'Americana', price: 5.00, seed_image: "/images/meals/corn_pizza.jpg" )

pizza.chef = kate
pizza.save

deppika_order = Order.new
deppika_order.meal = pizza
deppika_order.patron_id = deppika.id
deppika_order.quantity = 1
deppika_order.total_price = deppika_order.meal.price * deppika_order.quantity
deppika_order.save

breakfast = Meal.new(name: 'Euro Breakfast', description: 'Eggs toast and mushrooms', cuisine: 'Americana', price: 5.00, seed_image: "/images/meals/euro_breakfast.jpeg" )

breakfast.chef = deppika
breakfast.save

kate_order = Order.new
kate_order.meal = breakfast
kate_order.patron_id = kate.id
kate_order.quantity = 1
kate_order.total_price = kate_order.meal.price * kate_order.quantity
kate_order.save

crepes = Meal.new(name: 'Fruit Crepes', description: 'Crepes with fruit', cuisine: 'Americana', price: 5.00, seed_image: "/images/meals/fruit_crepes.jpeg" )

crepes.chef = sally
crepes.save

teresa_order = Order.new
teresa_order.meal = crepes
teresa_order.patron_id = teresa.id
teresa_order.quantity = 1
teresa_order.total_price = teresa_order.meal.price * teresa_order.quantity
teresa_order.save

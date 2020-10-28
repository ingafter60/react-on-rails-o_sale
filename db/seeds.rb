# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create product seed with save method
product = Product.New(name: "Name 1", description: "Description 1", price: 59.99)
product.save

# Create product seed with create method 
# If create success it will return and stores the result in product variable
product = Product.create(name: "Name 1", description: "Description 1", price: 59.99)

# If creating more then ONE product, we use product array
products = Product.create([
	{"Name 1", description: "Description 1", price: 59.99 },
	{"Name 2", description: "Description 2", price: 29.99 },
	{"Name 3", description: "Description 3", price: 39.99 }
])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Recipe.get_data

response = RestClient.get("http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3")
recipes = JSON.parse(response)["results"]

recipes.each do |recipe|
    Recipe.create(title: recipe["title"], ingredients: recipe["ingredients"], img_url: recipe["thumbnail"])
end

# Recipe.get_data
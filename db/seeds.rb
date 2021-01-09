# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rum")
Ingredient.create(name: "tequila")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "tomato juice")

# require 'open-uri'
# require 'json'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)
# ingredients_array = ingredients['drinks']
# drinks_array = []
# ingredients_array.each do |item|
#   item.each do |_key, value|
#     drinks_array << value
#   end
# end

# drinks_array.each do |drink|
#   ingredient = Ingredient.create(name: "#{drink}")
#   puts ingredient
# end

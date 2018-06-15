# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ingredients = Ingredient.create(name: "lemon")
# ingredients = Ingredient.create(name: "ice")
# ingredients = Ingredient.create(name: "mint leaves")
require 'open-uri'
require 'json'

results = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

results.each do |drink|
  drink[1].each do |result|
    result[:strIngredient1]
  end
end


cocktails = Cocktail.create(name: "Mojito")
cocktails = Cocktail.create(name: "Margarita")
cocktails = Cocktail.create(name: "Piña Colada")
cocktails = Cocktail.create(name: "Apple Martini")
cocktails = Cocktail.create(name: "Bee's Knees")
cocktails = Cocktail.create(name: "Cuba Libre")
cocktails = Cocktail.create(name: "Long Island Iced Tea")
cocktails = Cocktail.create(name: "Bloody Margaret")

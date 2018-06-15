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
Cocktail.delete_all
results = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

results.each do |drink|
  drink[1].each do |result|
    result[:strIngredient1]
  end
end


cocktails = Cocktail.create(name: "Mojito", image: "Mojito.jpg")
cocktails = Cocktail.create(name: "Margarita", image: "margarita.jpg")
cocktails = Cocktail.create(name: "Piña Colada", image: "pina_colada.jpg")
cocktails = Cocktail.create(name: "Apple Martini", image: "apple_martini.jpeg")
cocktails = Cocktail.create(name: "Bee's Knees", image: "bees_knees.jpg")
cocktails = Cocktail.create(name: "Cuba Libre", image: "cuba_libre.jpg")
cocktails = Cocktail.create(name: "Long Island Iced Tea", image: "Long-Island-Iced-Tea.jpg")
cocktails = Cocktail.create(name: "Bloody Margaret", image: "Bloody_margaret.jpg")

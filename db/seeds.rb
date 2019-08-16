puts "destroying cocktail"

Cocktail.destroy_all

puts "destroying dose"

Dose.destroy_all

puts "destroying ingredient"

Ingredient.destroy_all

puts "creating ingredients"

lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")

puts "creating cocktails"

mojito = Cocktail.create!(name: "Mojito")
long_island = Cocktail.create!(name: "long island")

puts "creating doses"

Dose.create!(amount: "20cl", description: "lorem", cocktail: mojito, ingredient: lemon)
Dose.create!(amount: "40cl", description: "ipsum", cocktail: long_island, ingredient: ice)
Dose.create!(amount: "60cl", description: "santus", cocktail: mojito, ingredient: mint)


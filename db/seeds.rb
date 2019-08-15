puts "destroy ingredient"

Ingredient.destroy_all

puts "destroy cocktail"

Cocktail.destroy_all

puts "destroy dose"

Dose.destroy_all

puts "create ingredients"

lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")
puts "destroy cocktails"
mojito = Cocktail.create!(name: "Mojito")
long_island = Cocktail.create!(name: "long island")

puts "destroy doses"

Dose.create!(amount: "20cl", description: "lorem", cocktail: mojito, ingredient: lemon)
Dose.create!(amount: "40cl", description: "ipsum", cocktail: long_island, ingredient: ice)
Dose.create!(amount: "60cl", description: "santus", cocktail: mojito, ingredient: mint)


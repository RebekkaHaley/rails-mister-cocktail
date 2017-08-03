# spirits
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Bourbon")
Ingredient.create(name: "Brandy")
Ingredient.create(name: "Scotch whisky")

# liqueurs
Ingredient.create(name: "Triple Sec")
Ingredient.create(name: "Maraschino liqueur")
Ingredient.create(name: "Coffee liqueur")
Ingredient.create(name: "Crème de Cassis1")
Ingredient.create(name: "Crème de Cacao")

# vermouths and bitters
Ingredient.create(name: "Dry Vermouth")
Ingredient.create(name: "Sweet (red) Vermouth")
Ingredient.create(name: "Campari")
Ingredient.create(name: "Angostura Bitters")
Ingredient.create(name: "Orange Bitters")

# non Alcoholic Syrups
Ingredient.create(name: "Sugar syrup")
Ingredient.create(name: "Grenadine")

# garnishes
Ingredient.create(name: "Ice")
Ingredient.create(name: "Limes and lemons")
Ingredient.create(name: "Oranges")
Ingredient.create(name: "Juice")
Ingredient.create(name: "Salt and pepper")
Ingredient.create(name: "Sugar and sugar cubes")
Ingredient.create(name: "Roses Lime Cordial")
Ingredient.create(name: "Mint leaves")

10.times do
  cocktail = Cocktail.create(name: Faker::Coffee.blend_name)
  3.times do
    Dose.create(description: Faker::Food.measurement, cocktail: cocktail, ingredient: Ingredient.all.sample)
  end
end


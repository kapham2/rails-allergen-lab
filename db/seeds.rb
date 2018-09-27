# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kim = User.create(name: "Kim")
lili = User.create(name: "Lili")
milo = User.create(name: "Milo")


cccookie = Recipe.create(name: "cccookie", user_id: kim.id)
ccpbcookie = Recipe.create(name: "ccpbcookie", user_id: kim.id)
sugarcookie = Recipe.create(name: "sugarcookie", user_id: kim.id)

sugar = Ingredient.create(name: "sugar")
flour = Ingredient.create(name: "flour")
salt = Ingredient.create(name: "salt")
egg = Ingredient.create(name: "egg")
butter = Ingredient.create(name: "butter")
chocolate_chips = Ingredient.create(name: "chocolate_chips")

RecipeIngredient.create(recipe_id: cccookie.id, ingredient_id: sugar.id)
RecipeIngredient.create(recipe_id: cccookie.id, ingredient_id: flour.id)
RecipeIngredient.create(recipe_id: cccookie.id, ingredient_id: salt.id)
RecipeIngredient.create(recipe_id: cccookie.id, ingredient_id: egg.id)
RecipeIngredient.create(recipe_id: cccookie.id, ingredient_id: chocolate_chips.id)

RecipeIngredient.create(recipe_id: ccpbcookie.id, ingredient_id: sugar.id)
RecipeIngredient.create(recipe_id: ccpbcookie.id, ingredient_id: flour.id)
RecipeIngredient.create(recipe_id: ccpbcookie.id, ingredient_id: salt.id)
RecipeIngredient.create(recipe_id: ccpbcookie.id, ingredient_id: egg.id)
RecipeIngredient.create(recipe_id: ccpbcookie.id, ingredient_id: butter.id)
RecipeIngredient.create(recipe_id: ccpbcookie.id, ingredient_id: chocolate_chips.id)

RecipeIngredient.create(recipe_id: sugarcookie.id, ingredient_id: sugar.id)
RecipeIngredient.create(recipe_id: sugarcookie.id, ingredient_id: flour.id)
RecipeIngredient.create(recipe_id: sugarcookie.id, ingredient_id: salt.id)
RecipeIngredient.create(recipe_id: sugarcookie.id, ingredient_id: egg.id)

Allergen.create(user_id: kim.id, ingredient_id: salt.id)
Allergen.create(user_id: lili.id, ingredient_id: salt.id)
Allergen.create(user_id: milo.id, ingredient_id: sugar.id)
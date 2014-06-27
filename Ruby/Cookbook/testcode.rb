require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]


mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]

mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients

burrito.print_recipe

chinese_taco = Recipe.new("Chinese Taco",["General Tso", "tortilla", "Hot Sauce"], ["Call a Chinese place and order General Tso", "Wait 45 minutes for it to arrive", "Wrap in in the tortilla", "Pour on Hot Sauce"])
chinese_taco.print_recipe

mex_cuisine.add_recipe(chinese_taco)
mex_cuisine.print_cookbook

mex_cuisine.delete_recipe(burrito)
mex_cuisine.print_cookbook
burrito.spice_it_up
burrito.print_recipe
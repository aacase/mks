class Cookbook
	attr_accessor :title
	attr_reader :recipes
	def initialize(title)
		@title=title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes.push(recipe)
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles()
		@recipes.each {|x| puts x.title}
	end

	def recipe_ingredients
		@recipes.each {|recipe| puts recipe.ingredients}

	end

	def print_cookbook

		counter = 1
		recipe_counter= 1
		@recipes.each do |recipe|
			puts "Recipe #{recipe_counter}: " + recipe.title
			puts "Ingredients: " + recipe.ingredients.join(", ")
			puts "Steps: "
			recipe.steps.each do |step|
				puts  "	#{counter}: " + step
				counter = counter + 1
				
			end

			recipe_counter= recipe_counter+1
			counter= 1 #resets counter back to 1 so the next recipes steps aren't a continuation of list
		end
	end

	def delete_recipe(recipe)
		@recipes.delete(recipe)
		puts "You deleted #{recipe.title}."
	end



	


end

class Recipe
	attr_accessor :title
	attr_accessor :steps
	attr_accessor :ingredients
	def initialize(title,ingredients,steps)
		@title=title
		@ingredients=ingredients
		@steps=steps
	end
	
	def print_recipe
		puts title
		puts ingredients.join(", ")
		counter = 1
		@steps.each do |step|
			puts  "#{counter}: " + step
			counter = counter + 1
		end
	end

	def spice_it_up
		puts "What kind of hot sauce do you want to add?"
		hotsauce=gets.chomp
		@ingredients <<" "+hotsauce
		puts "#{hotsauce} was added to the ingredients list"
	end
	

end
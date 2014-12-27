class Food < ActiveRecord::Base
	has_many :recipefoods
	has_many :recipes, :through => :recipefoods
end

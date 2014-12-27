class Recipe < ActiveRecord::Base
	has_many :recipefoods
	has_many :foods, :through => :recipefoods
end

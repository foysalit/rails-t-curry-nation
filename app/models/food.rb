class Food < ActiveRecord::Base
	has_many :recipe_foods
	has_many :recipes, :through => :recipe_foods
end

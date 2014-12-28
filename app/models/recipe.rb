class Recipe < ActiveRecord::Base
	has_many :recipe_foods
	has_many :foods, :through => :recipe_foods, :dependent => :destroy
	accepts_nested_attributes_for :recipe_foods
end

class CreateRecipeFoods < ActiveRecord::Migration
  def change
    create_table :recipe_foods do |t|
    	t.belongs_to :recipe, index: true
    	t.belongs_to :food, index: true
    	t.float :amount
    end
  end
end

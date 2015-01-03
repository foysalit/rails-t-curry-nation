class ChangeAmountFromFloatToString < ActiveRecord::Migration
  def change
  	change_column :recipe_foods, :amount, :string 
  end
end

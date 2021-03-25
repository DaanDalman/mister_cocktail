class AddIngredientToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :ingredients, :string
  end
end

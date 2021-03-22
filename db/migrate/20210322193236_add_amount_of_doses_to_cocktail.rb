class AddAmountOfDosesToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :amount, :integer
  end
end

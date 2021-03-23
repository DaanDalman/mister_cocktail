class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  TIMES = %w(1 2 3 4 5 6)
  validates :description, inclusion: { in: TIMES }
  DESCRIPTION = %w(Wodka Gin Black-Rum White-Rum Whiskey Absinth Tequila)
  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: [:ingredient_id] }
end

# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
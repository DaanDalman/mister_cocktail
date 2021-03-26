class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    validates :name, presence: true, uniqueness: true
    # validates :ingredient, presence: true
    # validates :doses, presence: true
    # validates :amount, presence: true
    has_one_attached :photo
end

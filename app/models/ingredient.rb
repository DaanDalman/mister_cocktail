class Ingredient < ApplicationRecord
    has_many :doses
    validates :name, presence: true, uniqueness: true
    NAMES = %w(lemon ice mint-leaves)
    validates :name, inclusion: { in: NAMES}
end

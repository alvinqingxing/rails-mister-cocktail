class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :amount, :cocktail_id, :ingredient_id, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end

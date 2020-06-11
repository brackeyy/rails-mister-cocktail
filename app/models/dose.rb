class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail, :ingredient, presence: true
  validates :description, allow_blank: false
  validates :cocktail, uniqueness: { scope: :ingredient }
end

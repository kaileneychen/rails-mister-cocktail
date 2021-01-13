class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  # this needs to be in order
  has_many :ingredients, through: :doses
end

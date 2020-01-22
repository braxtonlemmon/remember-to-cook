class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps
  belongs_to :user
  accepts_nested_attributes_for :ingredients, :steps

	# has_many :recipe_ingredients
	# has_many :ingredients, through: :recipe_ingredients 
  # belongs_to :user
  # accepts_nested_attributes_for :ingredients
  
  validates :title, presence: true, length: { maximum: 400 }
end

class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
  accepts_nested_attributes_for :steps, allow_destroy: true

	# has_many :recipe_ingredients
	# has_many :ingredients, through: :recipe_ingredients 
  # belongs_to :user
  # accepts_nested_attributes_for :ingredients
  
  validates :title, presence: true, length: { maximum: 400 }
end

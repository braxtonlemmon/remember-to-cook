class Step < ApplicationRecord
  belongs_to :recipe, optional: true
end

class Meal < ApplicationRecord
  has_many :foods, foreign_key: 'meal_id', dependent: :destroy
end

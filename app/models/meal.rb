class Meal < ApplicationRecord
  has_many :foods, foreign_key: 'meal_id', dependent: :destroy
  belongs_to :user
end

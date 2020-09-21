class Meal < ApplicationRecord
  belongs_to :user
  has_many :foods, foreign_key: "meal_id"
end

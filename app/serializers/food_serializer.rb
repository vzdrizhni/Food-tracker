class FoodSerializer < ActiveModel::Serializer
  attributes :id, :title, :calories, :grams
  belongs_to :meal
end

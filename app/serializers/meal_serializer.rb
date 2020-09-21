class MealSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  has_many :foods
end

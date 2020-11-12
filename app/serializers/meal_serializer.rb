class MealSerializer < ActiveModel::Serializer
  attributes :id, :created
  has_many :foods

  def created
    object.created_at.strftime('%d of %B, %Y')
  end
end

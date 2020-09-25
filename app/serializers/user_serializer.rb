class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :authentication_token, :name

  has_many :meals
end

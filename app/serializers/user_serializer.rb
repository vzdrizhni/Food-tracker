class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :authentication_token

  has_many :meals
end

class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def create_new_authentication_token
    token = User.generate_unique_secure_token
    update_attributes authentication_token: token
  end

  has_many :foods, foreign_key: 'user_id', dependent: :destroy
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it 'should test that the factory is valid' do
      expect(build(:user)).to be_invalid
    end

    it 'should validate the presence of the emal' do
      user = build :user, email: ''
      expect(user).not_to be_valid
      expect(user.errors.messages[:email]).to include("can't be blank")
    end

    it 'should validate the presence of the password' do
      user = build :user, password: ''
      expect(user).not_to be_valid
      expect(user.errors.messages[:password]).to include("can't be blank")
    end
  end
end

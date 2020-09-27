require 'rails_helper'

RSpec.describe Meal, type: :model do
  it 'should test that the factory is valid' do
    expect(build(:meal)).to be_invalid
  end
end

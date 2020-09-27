require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'should test that the factory is valid' do
    expect(build(:food)).to be_invalid
  end
end

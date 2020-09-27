require 'rails_helper'

describe 'food routes' do
  it 'should route to meal creation' do
    expect(post('/api/v1/meals/1/foods')).to route_to('api/v1/foods#create', 'meal_id' => '1', format: :json)
  end

  it 'should route to users session' do
    expect(get('/api/v1/meals/1/foods/1')).to route_to('api/v1/foods#show',
                                                       'id' => '1',
                                                       'meal_id' => '1',
                                                       format: :json)
  end
end

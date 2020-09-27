require 'rails_helper'

describe 'meal routes' do
  it 'should route to meal creation' do
    expect(post('/api/v1/meals')).to route_to('api/v1/meals#create', format: :json)
  end

  it 'should route to users session' do
    expect(get('/api/v1/meals/1')).to route_to('api/v1/meals#show', 'id' => '1', format: :json)
  end

  it 'should route to users session destroy' do
    expect(get('/api/v1/meals')).to route_to('api/v1/meals#index', format: :json)
  end
end

require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  context 'GET index' do
    before(:example) do
      get '/users'
    end

    it 'Should return true' do
      expect(response).to have_http_status(:success)
    end

    it 'should render a template' do
      expect(response).to render_template(:index)
    end
  end

  context 'GET show' do
    before(:example) { get '/users/3' }

    it 'Should return true' do
      expect(response).to have_http_status(:success)
    end

    it 'should render show template' do
      expect(response).to render_template(:show)
    end
  end
end

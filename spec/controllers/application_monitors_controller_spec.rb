require 'rails_helper'

RSpec.describe ApplicationMonitorsController, type: :controller do

  describe 'GET #dashboard' do
    it 'returns http success' do
      get :dashboard
      expect(response).to have_http_status(:success)
    end

    it 'renders :dashboard' do
      get :dashboard
      expect(response).to render_template :dashboard
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'renders :new' do
      get :new
      expect(response).to render_template :new
    end
  end
end

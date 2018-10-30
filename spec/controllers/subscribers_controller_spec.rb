require 'rails_helper'

RSpec.describe SubscribersController, type: :controller do

  describe 'GET #index' do
    it 'returns  http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'joins mailing list' do
      post :create, params: {subscriber: FactoryBot.attributes_for(:subscriber)}
      expect(response).to redirect_to root_path
    end

    it 'fails to join mailing list' do
      post :create, params: {subscriber: FactoryBot.attributes_for(:subscriber,{email: nil})}
      expect(response).to redirect_to root_path
    end
  end
end

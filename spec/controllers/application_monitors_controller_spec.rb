require 'rails_helper'

RSpec.describe ApplicationMonitorsController, type: :controller do

  let(:valid_attributes) do
    {
      application_name: 'Test Application',
      web_address: 'https://testaddress.app',
      time_interval: '25 minutes'
    }
  end

  let(:invalid_attributes) do
    {
      application_name: nil,
      web_address: 'https://testaddress.app',
      time_interval: '25 minutes'
    }
  end

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

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates new application monitor' do
        expect do
          post :create, params: { application_monitor: valid_attributes }
        end.to change(ApplicationMonitor, :count).by(1)
      end
    end
    context 'with invalid params' do
      it "re-renders the 'new' template" do
        post :create, params: { application_monitor: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested app monitor' do
      monitor = FactoryBot.create(:application_monitor)
      expect do
        delete :destroy, params: { id: monitor.to_param }
      end.to change(ApplicationMonitor, :count).by(-1)
    end

    it 'redirects to the dashboard' do
      monitor = FactoryBot.create(:application_monitor)
      delete :destroy, params: { id: monitor.to_param }
      expect(response).to redirect_to(dashboard_path)
    end
  end
end

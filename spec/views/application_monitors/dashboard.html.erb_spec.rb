require 'rails_helper'

RSpec.describe "application_monitors/dashboard.html.erb", type: :view do
  before do
    @monitors = ApplicationMonitor.order(:application_name).page(params[:id])
  end
  it 'renders Application Dashboard' do
    render :template => 'application_monitors/dashboard.html.erb'
    expect(rendered).to match /Currently Monitoring Applications/
  end
end

require 'rails_helper'

RSpec.describe "application_monitors/dashboard.html.erb", type: :view do
  before do
    @monitors = ApplicationMonitor.all
  end
  it 'renders Application Dashboard' do
    render :template => 'application_monitors/dashboard.html.erb'
    expect(rendered).to match /Application Dashboard/
  end
end

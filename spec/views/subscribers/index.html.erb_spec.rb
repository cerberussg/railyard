require 'rails_helper'

RSpec.describe "subscribers/index.html.erb" do
  before do
    render :template => 'subscribers/index.html.erb'
  end
  it 'renders the words keep awake' do
    expect(rendered).to match /keep awake/
  end

  it 'renders the words Monitor Your Application in Real Time' do
    expect(rendered).to match /Monitor Your Application in Real Time/
  end
end

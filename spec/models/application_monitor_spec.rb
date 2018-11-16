require 'rails_helper'

RSpec.describe ApplicationMonitor, type: :model do
  context 'valid factory' do
    it 'has a valid factory' do
      expect(FactoryBot.build(:application_monitor)).to be_valid
    end
  end
end

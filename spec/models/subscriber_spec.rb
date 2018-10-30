require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  context 'Valid factory' do
    it 'has a valid factory' do
      expect(FactoryBot.build(:subscriber)).to be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe UserDecorator do
  let(:user) { create :user, first_name: 'Jane' }
  let(:decorated_user) { user.decorate }

  describe '#full_name' do
    it 'returns full user name' do
      expect(decorated_user.full_name).to eq 'Jane Snow'
    end
  end
end

require 'rails_helper'

RSpec.describe UserDecorator do
  let(:user) { create :user, first_name: 'Jane' }
  let(:decorated_user) { user.decorate }

  describe '#full_name' do
    context 'first and last name are present' do
      it 'returns full user name' do
        expect(decorated_user.full_name).to eq 'Jane Snow'
      end
    end

    context 'last name is empty' do
      before { user.update(last_name: nil) }

      it 'returns only first name' do
        expect(decorated_user.full_name).to eq 'Jane'
      end
    end

    context 'first name is empty' do
      before { user.update(first_name: nil) }

      it 'returns only last name' do
        expect(decorated_user.full_name).to eq 'Snow'
      end
    end

    context 'first and last name are empty' do
      before { user.update(first_name: nil, last_name: nil) }

      it 'returns user email' do
        expect(decorated_user.full_name).to eq user.email
      end
    end
  end
end

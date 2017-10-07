require 'rails_helper'

RSpec.describe StatisticsController, type: :controller do
  describe 'When logged in' do
    let(:default_user) { create(:default_user) }
    before do
      login_by_user default_user
    end

    describe 'GET /statistics/index' do
      it 'works!' do
        get 'index'
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'No Login' do
    describe 'GET /statistics/index' do
      it 'redirect to login' do
        get 'index'
        expect(response.status).to eq(302)
      end
    end
  end
end

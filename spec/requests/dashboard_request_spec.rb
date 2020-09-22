require 'rails_helper'

RSpec.describe "Dashboard", type: :request do

    before(:each) do
        @user= FactoryBot.create(:user)
    end

    it 'get request to index page should return 200' do
        sign_in @user
        get "/dashboard/index"
        expect(response).to have_http_status(200)    
    end
end

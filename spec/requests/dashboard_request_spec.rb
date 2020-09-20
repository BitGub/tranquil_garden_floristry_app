require 'rails_helper'

RSpec.describe "Dashboard", type: :request do
    
    it 'get request to index page should return 200' do
        get "/dashboard/index"
        expect(response).to have_http_status(200)    
    end
end

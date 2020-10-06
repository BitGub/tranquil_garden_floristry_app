require 'rails_helper'

RSpec.describe "Products", type: :request do

    let(:product) {FactoryBot.build(:product)}

    before(:each) do
        @user= FactoryBot.create(:user)
    end

    it 'get request to index page should return 200' do
        sign_in @user
        get products_path
        expect(response).to have_http_status(200)        
    end

    it 'get request to new page should return 200' do
        sign_in @user
        get new_product_path
        expect(response).to have_http_status(200)        
    end

    it 'post request should return 200 on save' do
        sign_in @user
        get new_product_path
        post "/products", params: {:product => { name: product.name, description: product.description, price: product.price }}
        follow_redirect!
        expect(response).to have_http_status(200)    
    end

    it 'put request should return 204 on update' do

    end

    it 'get request to show page should return 200' do
        sign_in @user
        get products_path(@product)
        expect(response).to have_http_status(200)   
    end
end

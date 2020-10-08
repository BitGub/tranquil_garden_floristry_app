require 'rails_helper'

RSpec.feature "products", :type => :feature do

    context "When not logged in User is" do
        scenario "redirected to log in" do
            visit products_path

            expect(page).to have_text("Log in")
        end

    end

    context "When User is logged in" do
        
        before(:each) do
            @user = FactoryBot.create(:user)
            5.times { FactoryBot.create(:product) }
            visit new_user_session_path
            sign_in_capybara(@user)
            visit products_path
        end

        scenario "can visit restricted pages" do
            expect(page).to have_title("Products Index")   
        end

        scenario "can create a new product" do
            click_link "New +"
            fill_in "product[name]", with: "Test Product 01"
            fill_in "product[description]", with: "Test product description"
            fill_in "product[price]", with: 5.00
            click_button "Create Product"

            expect(body).to include("created")
        end

        scenario "can edit an exsisting product" do
            click_link("Edit", match: :first)
            fill_in "product[name]", with: "EditedProductName"
            click_button "Update Product"

            expect(body).to include ("updated")
        end

        scenario "can delete an exsisting product" do
            expect do
                click_link('Delete', match: :first)
              end.to change(Product, :count).by(-1)

              expect(body).to include("deleted")

        end
    end

end
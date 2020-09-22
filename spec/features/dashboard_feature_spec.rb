require 'rails_helper'

RSpec.feature "User dashboard", :type => :feature do

    context "When User is not logged in" do
        scenario "User is bounced back to sign in page " do
            visit dashboard_index_path

            expect(page).to have_text("Log in")
        end
    end

    context "When User is logged in" do

        before(:each) do
            @user = FactoryBot.create(:user)
        end

        scenario "User is redirected to dashboard" do
            visit new_user_session_path
            sign_in_capybara(@user)

            expect(page).to have_text("This is the Dashboard page")    
        end
    end

end

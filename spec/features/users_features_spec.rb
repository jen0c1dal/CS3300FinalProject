require "rails_helper"

RSpec.feature "Users", type: :feature do
    context "Login" do
        scenario "should sign up" do
            visit root_path
            click_link 'Sign up'
            within("form") do
                fill_in "Email", with: "testing@test.com"
                fill_in "Password", with: "123456"
                fill_in "Password confirmation", with: "123456"
                click_button "Sign up"
            end
            expect(page).to have_content("Welcome! You have signed up successfully.")
        end

        scenario "should log in" do
            user = FactoryBot.create(:user)
            login_as(user)
            visit root_path
            expect(page).to have_content("Logged in")
        end
    end

    context "Update user" do
        before(:each) do
            user = FactoryBot.create(:user)
            login_as(user)
            visit edit_user_registration_path
        end
        
        # Successful scenarios
        scenario "should be successfull" do
            first("form") do
                fill_in "Email", with: "newtest@user.com"
                fill_in "Current password", with: "qwerty"
            end
            click_button "Update"
            expect(page).to have_content("Logged in as newtest@user.com")
        end

        # Failure Scenarios
        scenario "should fail" do
            first("form") do
                fill_in "Email", with: ""
                fill_in "Current password", with: "qwerty"
            end
            click_button "Update"
            expect(page).to have_content("Email can't be blank")
        end
    end

    context "Cancel account" do
        before(:each) do
            user = FactoryBot.create(:user)
            login_as(user)
            visit edit_user_registration_path
        end
        
        scenario "Should be successful" do
            click_button "Cancel my account"
            expect(page).to have_content("Your account has been successfully cancelled")
        end
    end
end
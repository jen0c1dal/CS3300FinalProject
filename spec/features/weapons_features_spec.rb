require "rails_helper"

RSpec.feature "Weapons", type: :feature do
  context "Update weapon" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_project_path
    end

    let(:weapon) { Weapon.create(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1") }
    before(:each) do
      visit edit_weapon_path(weapon)
    end
     # Successful scenarios
    scenario "should be successful" do
      within("form") do
        fill_in "name", with: "New Name"
      end
      click_button "Update Weapon"
      expect(page).to have_content("Weapon was successfully updated")
    end
     scenario "should be successful" do
      within("form") do
        fill_in "description", with: "New description content"
      end
      click_button "Update Weapon"
      expect(page).to have_content("Weapon was successfully updated")
    end

    scenario "should be successful" do
      within("form") do
        fill_in "dmg_type", with: "New damage type"
      end
      click_button "Update Weapon"
      expect(page).to have_content("Weapon was successfully updated")
    end
     scenario "should be successful" do
      within("form") do
        fill_in "dmg_dice", with: "ydy"
      end
      click_button "Update Weapon"
      expect(page).to have_content("Weapon was successfully updated")
    end

    scenario "should be successful" do
      within("form") do
        fill_in "power_level", with: "2"
      end
      click_button "Update Weapon"
      expect(page).to have_content("Weapon was successfully updated")
    end

    # Failure Scenarios
    scenario "should fail" do
      within("form") do
        fill_in "name", with: ""
      end
      click_button "Update Weapon"
      expect(page).to have_content("Name can't be blank")
    end

    scenario "should fail" do
      within("form") do
        fill_in "description", with: ""
      end
      click_button "Update Weapon"
      expect(page).to have_content("Description can't be blank")
    end

    scenario "should fail" do
      within("form") do
        fill_in "dmg_type", with: ""
      end
      click_button "Update Weapon"
      expect(page).to have_content("Damage type can't be blank")
    end

    scenario "should fail" do
      within("form") do
        fill_in "dmg_dice", with: ""
      end
      click_button "Update Weapon"
      expect(page).to have_content("Damage dice can't be blank")
    end

    scenario "should fail" do
      within("form") do
        fill_in "power_level", with: ""
      end
      click_button "Update Weapon"
      expect(page).to have_content("Power level can't be blank")
    end
  end

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
end
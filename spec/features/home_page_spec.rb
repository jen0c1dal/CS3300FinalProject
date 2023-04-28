RSpec.feature "HomePages", type: :feature do
    scenario "The visitor should see weapons" do
        visit root_path
        expect(page).to have_text("Weapons")
      end
    end
require "application_system_test_case"

class WeaponsTest < ApplicationSystemTestCase
  setup do
    @weapon = weapons(:one)
  end

  test "visiting the index" do
    visit weapons_url
    assert_selector "h1", text: "Weapons"
  end

  test "creating a Weapon" do
    visit weapons_url
    click_on "New Weapon"

    fill_in "Description", with: @weapon.description
    fill_in "Dmg dice", with: @weapon.dmg_dice
    fill_in "Dmg type", with: @weapon.dmg_type
    fill_in "Name", with: @weapon.name
    fill_in "P level", with: @weapon.p_level
    fill_in "String", with: @weapon.string
    click_on "Create Weapon"

    assert_text "Weapon was successfully created"
    click_on "Back"
  end

  test "updating a Weapon" do
    visit weapons_url
    click_on "Edit", match: :first

    fill_in "Description", with: @weapon.description
    fill_in "Dmg dice", with: @weapon.dmg_dice
    fill_in "Dmg type", with: @weapon.dmg_type
    fill_in "Name", with: @weapon.name
    fill_in "P level", with: @weapon.p_level
    fill_in "String", with: @weapon.string
    click_on "Update Weapon"

    assert_text "Weapon was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon" do
    visit weapons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weapon was successfully destroyed"
  end
end

require "application_system_test_case"

class AssembliesTest < ApplicationSystemTestCase
  setup do
    @assembly = assemblies(:one)
  end

  test "visiting the index" do
    visit assemblies_url
    assert_selector "h1", text: "Assemblies"
  end

  test "creating a Assembly" do
    visit assemblies_url
    click_on "New Assembly"

    fill_in "Percentage", with: @assembly.percentage
    fill_in "Strain", with: @assembly.strain_id
    fill_in "Wine", with: @assembly.wine_id
    click_on "Create Assembly"

    assert_text "Assembly was successfully created"
    click_on "Back"
  end

  test "updating a Assembly" do
    visit assemblies_url
    click_on "Edit", match: :first

    fill_in "Percentage", with: @assembly.percentage
    fill_in "Strain", with: @assembly.strain_id
    fill_in "Wine", with: @assembly.wine_id
    click_on "Update Assembly"

    assert_text "Assembly was successfully updated"
    click_on "Back"
  end

  test "destroying a Assembly" do
    visit assemblies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assembly was successfully destroyed"
  end
end

require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  setup do
    @home = homes(:one)
  end

  test "visiting the index" do
    visit homes_url
    assert_selector "h1", text: "Homes"
  end

  test "creating a Home" do
    visit homes_url
    click_on "New Home"

    fill_in "Aadhar", with: @home.Aadhar
    fill_in "Children", with: @home.Children
    fill_in "Dob", with: @home.Dob
    fill_in "Father", with: @home.Father
    fill_in "Mother", with: @home.Mother
    fill_in "Name", with: @home.Name
    fill_in "Index", with: @home.index
    click_on "Create Home"

    assert_text "Home was successfully created"
    click_on "Back"
  end

  test "updating a Home" do
    visit homes_url
    click_on "Edit", match: :first

    fill_in "Aadhar", with: @home.Aadhar
    fill_in "Children", with: @home.Children
    fill_in "Dob", with: @home.Dob
    fill_in "Father", with: @home.Father
    fill_in "Mother", with: @home.Mother
    fill_in "Name", with: @home.Name
    fill_in "Index", with: @home.index
    click_on "Update Home"

    assert_text "Home was successfully updated"
    click_on "Back"
  end

  test "destroying a Home" do
    visit homes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home was successfully destroyed"
  end
end

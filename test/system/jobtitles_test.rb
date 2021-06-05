require "application_system_test_case"

class JobtitlesTest < ApplicationSystemTestCase
  setup do
    @jobtitle = jobtitles(:one)
  end

  test "visiting the index" do
    visit jobtitles_url
    assert_selector "h1", text: "Jobtitles"
  end

  test "creating a Jobtitle" do
    visit jobtitles_url
    click_on "New Jobtitle"

    fill_in "Name", with: @jobtitle.name
    click_on "Create Jobtitle"

    assert_text "Jobtitle was successfully created"
    click_on "Back"
  end

  test "updating a Jobtitle" do
    visit jobtitles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @jobtitle.name
    click_on "Update Jobtitle"

    assert_text "Jobtitle was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobtitle" do
    visit jobtitles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobtitle was successfully destroyed"
  end
end

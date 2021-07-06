require "application_system_test_case"

class BiodataTest < ApplicationSystemTestCase
  setup do
    @biodatum = biodata(:one)
  end

  test "visiting the index" do
    visit biodata_url
    assert_selector "h1", text: "Biodata"
  end

  test "creating a Biodatum" do
    visit biodata_url
    click_on "New Biodatum"

    check "Btech" if @biodatum.btech
    fill_in "Dateofbirth", with: @biodatum.dateofbirth
    fill_in "Email", with: @biodatum.email
    fill_in "Fathername", with: @biodatum.fathername
    fill_in "Gender", with: @biodatum.gender
    check "Inter" if @biodatum.inter
    fill_in "Name", with: @biodatum.name
    check "Ssc" if @biodatum.ssc
    click_on "Create Biodatum"

    assert_text "Biodatum was successfully created"
    click_on "Back"
  end

  test "updating a Biodatum" do
    visit biodata_url
    click_on "Edit", match: :first

    check "Btech" if @biodatum.btech
    fill_in "Dateofbirth", with: @biodatum.dateofbirth
    fill_in "Email", with: @biodatum.email
    fill_in "Fathername", with: @biodatum.fathername
    fill_in "Gender", with: @biodatum.gender
    check "Inter" if @biodatum.inter
    fill_in "Name", with: @biodatum.name
    check "Ssc" if @biodatum.ssc
    click_on "Update Biodatum"

    assert_text "Biodatum was successfully updated"
    click_on "Back"
  end

  test "destroying a Biodatum" do
    visit biodata_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biodatum was successfully destroyed"
  end
end

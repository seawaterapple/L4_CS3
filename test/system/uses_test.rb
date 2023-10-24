require "application_system_test_case"

class UsesTest < ApplicationSystemTestCase
  setup do
    @use = uses(:one)
  end

  test "visiting the index" do
    visit uses_url
    assert_selector "h1", text: "Uses"
  end

  test "should create use" do
    visit uses_url
    click_on "New use"

    fill_in "Pass", with: @use.pass
    fill_in "Uid", with: @use.uid
    click_on "Create Use"

    assert_text "Use was successfully created"
    click_on "Back"
  end

  test "should update Use" do
    visit use_url(@use)
    click_on "Edit this use", match: :first

    fill_in "Pass", with: @use.pass
    fill_in "Uid", with: @use.uid
    click_on "Update Use"

    assert_text "Use was successfully updated"
    click_on "Back"
  end

  test "should destroy Use" do
    visit use_url(@use)
    click_on "Destroy this use", match: :first

    assert_text "Use was successfully destroyed"
  end
end

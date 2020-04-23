require "application_system_test_case"

class KlassesTest < ApplicationSystemTestCase
  setup do
    @klass = klasses(:one)
  end

  test "visiting the index" do
    visit klasses_url
    assert_selector "h1", text: "Klasses"
  end

  test "creating a Klass" do
    visit klasses_url
    click_on "New Klass"

    fill_in "Credit", with: @klass.credit
    fill_in "Name", with: @klass.name
    fill_in "Student", with: @klass.student_id
    fill_in "Tutor", with: @klass.tutor_id
    click_on "Create Klass"

    assert_text "Klass was successfully created"
    click_on "Back"
  end

  test "updating a Klass" do
    visit klasses_url
    click_on "Edit", match: :first

    fill_in "Credit", with: @klass.credit
    fill_in "Name", with: @klass.name
    fill_in "Student", with: @klass.student_id
    fill_in "Tutor", with: @klass.tutor_id
    click_on "Update Klass"

    assert_text "Klass was successfully updated"
    click_on "Back"
  end

  test "destroying a Klass" do
    visit klasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Klass was successfully destroyed"
  end
end

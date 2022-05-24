require "application_system_test_case"

class MatsTest < ApplicationSystemTestCase
  setup do
    @mat = mats(:one)
  end

  test "visiting the index" do
    visit mats_url
    assert_selector "h1", text: "Mats"
  end

  test "should create mat" do
    visit mats_url
    click_on "New mat"

    fill_in "Brand", with: @mat.brand
    fill_in "Image", with: @mat.image
    fill_in "Length1", with: @mat.length1
    fill_in "Length2", with: @mat.length2
    fill_in "Length3", with: @mat.length3
    fill_in "Link", with: @mat.link
    fill_in "Material", with: @mat.material
    fill_in "Name", with: @mat.name
    fill_in "Thickness", with: @mat.thickness
    fill_in "Weight", with: @mat.weight
    fill_in "Width1", with: @mat.width1
    fill_in "Width2", with: @mat.width2
    click_on "Create Mat"

    assert_text "Mat was successfully created"
    click_on "Back"
  end

  test "should update Mat" do
    visit mat_url(@mat)
    click_on "Edit this mat", match: :first

    fill_in "Brand", with: @mat.brand
    fill_in "Image", with: @mat.image
    fill_in "Length1", with: @mat.length1
    fill_in "Length2", with: @mat.length2
    fill_in "Length3", with: @mat.length3
    fill_in "Link", with: @mat.link
    fill_in "Material", with: @mat.material
    fill_in "Name", with: @mat.name
    fill_in "Thickness", with: @mat.thickness
    fill_in "Weight", with: @mat.weight
    fill_in "Width1", with: @mat.width1
    fill_in "Width2", with: @mat.width2
    click_on "Update Mat"

    assert_text "Mat was successfully updated"
    click_on "Back"
  end

  test "should destroy Mat" do
    visit mat_url(@mat)
    click_on "Destroy this mat", match: :first

    assert_text "Mat was successfully destroyed"
  end
end

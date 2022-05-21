require "application_system_test_case"

class PosesTest < ApplicationSystemTestCase
  setup do
    @pose = poses(:one)
  end

  test "visiting the index" do
    visit poses_url
    assert_selector "h1", text: "Poses"
  end

  test "should create pose" do
    visit poses_url
    click_on "New pose"

    fill_in "Description", with: @pose.description
    fill_in "Image", with: @pose.image
    fill_in "Name", with: @pose.name
    check "Seated" if @pose.seated
    fill_in "Target body area", with: @pose.target_body_area
    click_on "Create Pose"

    assert_text "Pose was successfully created"
    click_on "Back"
  end

  test "should update Pose" do
    visit pose_url(@pose)
    click_on "Edit this pose", match: :first

    fill_in "Description", with: @pose.description
    fill_in "Image", with: @pose.image
    fill_in "Name", with: @pose.name
    check "Seated" if @pose.seated
    fill_in "Target body area", with: @pose.target_body_area
    click_on "Update Pose"

    assert_text "Pose was successfully updated"
    click_on "Back"
  end

  test "should destroy Pose" do
    visit pose_url(@pose)
    click_on "Destroy this pose", match: :first

    assert_text "Pose was successfully destroyed"
  end
end

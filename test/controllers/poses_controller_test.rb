require "test_helper"

class PosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pose = poses(:one)
  end

  test "should get index" do
    get poses_url
    assert_response :success
  end

  test "should get new" do
    get new_pose_url
    assert_response :success
  end

  test "should create pose" do
    assert_difference("Pose.count") do
      post poses_url, params: { pose: { description: @pose.description, image: @pose.image, name: @pose.name, seated: @pose.seated, target_body_area: @pose.target_body_area } }
    end

    assert_redirected_to pose_url(Pose.last)
  end

  test "should show pose" do
    get pose_url(@pose)
    assert_response :success
  end

  test "should get edit" do
    get edit_pose_url(@pose)
    assert_response :success
  end

  test "should update pose" do
    patch pose_url(@pose), params: { pose: { description: @pose.description, image: @pose.image, name: @pose.name, seated: @pose.seated, target_body_area: @pose.target_body_area } }
    assert_redirected_to pose_url(@pose)
  end

  test "should destroy pose" do
    assert_difference("Pose.count", -1) do
      delete pose_url(@pose)
    end

    assert_redirected_to poses_url
  end
end

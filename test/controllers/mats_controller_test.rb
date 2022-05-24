require "test_helper"

class MatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mat = mats(:one)
  end

  test "should get index" do
    get mats_url
    assert_response :success
  end

  test "should get new" do
    get new_mat_url
    assert_response :success
  end

  test "should create mat" do
    assert_difference("Mat.count") do
      post mats_url, params: { mat: { brand: @mat.brand, image: @mat.image, length1: @mat.length1, length2: @mat.length2, length3: @mat.length3, link: @mat.link, material: @mat.material, name: @mat.name, thickness: @mat.thickness, weight: @mat.weight, width1: @mat.width1, width2: @mat.width2 } }
    end

    assert_redirected_to mat_url(Mat.last)
  end

  test "should show mat" do
    get mat_url(@mat)
    assert_response :success
  end

  test "should get edit" do
    get edit_mat_url(@mat)
    assert_response :success
  end

  test "should update mat" do
    patch mat_url(@mat), params: { mat: { brand: @mat.brand, image: @mat.image, length1: @mat.length1, length2: @mat.length2, length3: @mat.length3, link: @mat.link, material: @mat.material, name: @mat.name, thickness: @mat.thickness, weight: @mat.weight, width1: @mat.width1, width2: @mat.width2 } }
    assert_redirected_to mat_url(@mat)
  end

  test "should destroy mat" do
    assert_difference("Mat.count", -1) do
      delete mat_url(@mat)
    end

    assert_redirected_to mats_url
  end
end

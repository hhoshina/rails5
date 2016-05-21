require 'test_helper'

class TwinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twine = twines(:one)
  end

  test "should get index" do
    get twines_url
    assert_response :success
  end

  test "should get new" do
    get new_twine_url
    assert_response :success
  end

  test "should create twine" do
    assert_difference('Twine.count') do
      post twines_url, params: { twine: { locate: @twine.locate, temp: @twine.temp } }
    end

    assert_redirected_to twine_path(Twine.last)
  end

  test "should show twine" do
    get twine_url(@twine)
    assert_response :success
  end

  test "should get edit" do
    get edit_twine_url(@twine)
    assert_response :success
  end

  test "should update twine" do
    patch twine_url(@twine), params: { twine: { locate: @twine.locate, temp: @twine.temp } }
    assert_redirected_to twine_path(@twine)
  end

  test "should destroy twine" do
    assert_difference('Twine.count', -1) do
      delete twine_url(@twine)
    end

    assert_redirected_to twines_path
  end
end

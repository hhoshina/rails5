require 'test_helper'

class GeoipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geoip = geoips(:one)
  end

  test "should get index" do
    get geoips_url
    assert_response :success
  end

  test "should get new" do
    get new_geoip_url
    assert_response :success
  end

  test "should create geoip" do
    assert_difference('Geoip.count') do
      post geoips_url, params: { geoip: { ipaddress: @geoip.ipaddress, latitude: @geoip.latitude, longitude: @geoip.longitude } }
    end

    assert_redirected_to geoip_path(Geoip.last)
  end

  test "should show geoip" do
    get geoip_url(@geoip)
    assert_response :success
  end

  test "should get edit" do
    get edit_geoip_url(@geoip)
    assert_response :success
  end

  test "should update geoip" do
    patch geoip_url(@geoip), params: { geoip: { ipaddress: @geoip.ipaddress, latitude: @geoip.latitude, longitude: @geoip.longitude } }
    assert_redirected_to geoip_path(@geoip)
  end

  test "should destroy geoip" do
    assert_difference('Geoip.count', -1) do
      delete geoip_url(@geoip)
    end

    assert_redirected_to geoips_path
  end
end

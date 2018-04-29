require 'test_helper'

class ApachelogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apachelog = apachelogs(:one)
  end

  test "should get index" do
    get apachelogs_url
    assert_response :success
  end

  test "should get new" do
    get new_apachelog_url
    assert_response :success
  end

  test "should create apachelog" do
    assert_difference('Apachelog.count') do
      post apachelogs_url, params: { apachelog: { bite: @apachelog.bite, ipadress: @apachelog.ipadress, method: @apachelog.method, status: @apachelog.status, time: @apachelog.time, url: @apachelog.url, useragent: @apachelog.useragent } }
    end

    assert_redirected_to apachelog_url(Apachelog.last)
  end

  test "should show apachelog" do
    get apachelog_url(@apachelog)
    assert_response :success
  end

  test "should get edit" do
    get edit_apachelog_url(@apachelog)
    assert_response :success
  end

  test "should update apachelog" do
    patch apachelog_url(@apachelog), params: { apachelog: { bite: @apachelog.bite, ipadress: @apachelog.ipadress, method: @apachelog.method, status: @apachelog.status, time: @apachelog.time, url: @apachelog.url, useragent: @apachelog.useragent } }
    assert_redirected_to apachelog_url(@apachelog)
  end

  test "should destroy apachelog" do
    assert_difference('Apachelog.count', -1) do
      delete apachelog_url(@apachelog)
    end

    assert_redirected_to apachelogs_url
  end
end

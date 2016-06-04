require 'test_helper'

class AccessLogToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_log_tool = access_log_tools(:one)
  end

  test "should get index" do
    get access_log_tools_url
    assert_response :success
  end

  test "should get new" do
    get new_access_log_tool_url
    assert_response :success
  end

  test "should create access_log_tool" do
    assert_difference('AccessLogTool.count') do
      post access_log_tools_url, params: { access_log_tool: { input1: @access_log_tool.input1, input2: @access_log_tool.input2, input3: @access_log_tool.input3, input4: @access_log_tool.input4, input5: @access_log_tool.input5, program_name: @access_log_tool.program_name, remote_addr: @access_log_tool.remote_addr, status: @access_log_tool.status, status_comment2: @access_log_tool.status_comment2, status_comment3: @access_log_tool.status_comment3, status_comment: @access_log_tool.status_comment, time_e: @access_log_tool.time_e, time_s: @access_log_tool.time_s, useragent: @access_log_tool.useragent } }
    end

    assert_redirected_to access_log_tool_path(AccessLogTool.last)
  end

  test "should show access_log_tool" do
    get access_log_tool_url(@access_log_tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_log_tool_url(@access_log_tool)
    assert_response :success
  end

  test "should update access_log_tool" do
    patch access_log_tool_url(@access_log_tool), params: { access_log_tool: { input1: @access_log_tool.input1, input2: @access_log_tool.input2, input3: @access_log_tool.input3, input4: @access_log_tool.input4, input5: @access_log_tool.input5, program_name: @access_log_tool.program_name, remote_addr: @access_log_tool.remote_addr, status: @access_log_tool.status, status_comment2: @access_log_tool.status_comment2, status_comment3: @access_log_tool.status_comment3, status_comment: @access_log_tool.status_comment, time_e: @access_log_tool.time_e, time_s: @access_log_tool.time_s, useragent: @access_log_tool.useragent } }
    assert_redirected_to access_log_tool_path(@access_log_tool)
  end

  test "should destroy access_log_tool" do
    assert_difference('AccessLogTool.count', -1) do
      delete access_log_tool_url(@access_log_tool)
    end

    assert_redirected_to access_log_tools_path
  end
end

json.array!(@access_log_tools) do |access_log_tool|
  json.extract! access_log_tool, :id, :time_s, :time_e, :status, :status_comment, :status_comment2, :status_comment3, :remote_addr, :useragent, :program_name, :input1, :input2, :input3, :input4, :input5
  json.url access_log_tool_url(access_log_tool, format: :json)
end

class AccessLogToolsController < InheritedResources::Base

  private

    def access_log_tool_params
      params.require(:access_log_tool).permit(:time_s, :time_e, :status, :status_comment, :status_comment2, :status_comment3, :remote_addr, :useragent, :program_name, :input1, :input2, :input3, :input4, :input5)
    end
end


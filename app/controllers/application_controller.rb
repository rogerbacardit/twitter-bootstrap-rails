class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :detect_user_agent

  def detect_user_agent
    case request.user_agent
      when /(gecko|opera|konqueror|khtml|webkit)/i
        @browser = :cool
      when /msie/i
        @browser = :ie
      else
        @browser = :dunno
    end
  end
end

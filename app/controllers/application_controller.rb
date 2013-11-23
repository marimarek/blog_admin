class ApplicationController < ActionController::Base
	before_filter :load_session_manager
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 
  
  include SessionsHelper
  
  private
  def load_session_manager(manager = SessionManager.new(session))
    @session_manager ||= manager
  end
end

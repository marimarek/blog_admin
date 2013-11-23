module SessionsHelper
  
  def admin_only!
    if !@session_manager.signed_in?
	   redirect_to root_path
	end
  end
  
end

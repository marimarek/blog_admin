class SessionManager
   class InvalidUserNameError < StandardError; end
   class InvalidPasswordError < StandardError; end
   
  def initialize(session)
    @session = session
  end
   
  def sign_in(name, password)
	user = User.find_by(name: name)
	
	raise InvalidUserNameError.new if user.nil?
	raise InvalidPasswordError.new unless user.authenticate(password)

	@session[:id] = user.id
  end
  
  def logout
	@session[:id] = nil
  end
  
  def current_user
	if signed_in?
	   User.find(session[:id])
	else
	   nil
	end  
  end
  
  def signed_in?
	!@session[:id].nil?
  end
  
  
  
end
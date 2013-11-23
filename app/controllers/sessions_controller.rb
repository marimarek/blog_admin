class SessionsController < ApplicationController

  def new
  end

  def create
  
    begin
      @session_manager.sign_in(params[:session][:name], params[:session][:password])
	rescue StandardError
      render 'new'
	  return
    end

	redirect_to root_path
  end

  def destroy
    @session_manager.logout
    redirect_to root_url
  end
  
end

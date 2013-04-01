class SessionsController < ApplicationController
  def new
  end

  def create
	twit = Twit.authenticate(params[:username], params[:password])
	if twit
		session[:twit_id] = twit.id
		redirect_to root_url, :notice => "logged in!"
	else
		flash.now.alert = "Invald login"
		render "new"
	end
  end
  
  def destroy
	session[:twit_id] = nil
	redirect_to root_url, :notice => "logged out!"
  end
end

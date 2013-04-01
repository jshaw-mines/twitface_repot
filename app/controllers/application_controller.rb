class ApplicationController < ActionController::Base
	protect_from_forgery
	helper_method :current_twit
	
	private

	def current_twit
		@current_twit ||= Twit.find(session[:twit_id]) if session[:twit_id]
	end
  
end

module SessionsHelper

	#log in user
	def log_in(user)
		session[:user_id] = user.id
	end

	#returns logged in user if any
	def current_user
		if session[:user_id]
			@current_user ||= User.find_by(id: session[:user_id])
		end
	end

	#retuns if a user is logged in
	def logged_in?
		!current_user.nil?
	end

	#log out user
	def log_out
		reset_session
		@current_user = nil
	end
end

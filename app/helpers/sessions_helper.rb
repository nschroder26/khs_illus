module SessionsHelper

	#log in user
	def log_in(user)
		session[:user_id] = user.id
	end
end

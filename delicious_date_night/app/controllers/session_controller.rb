class SessionController < ApplicationController

	# GET /session/new
	# get login page with login form
	def new

	end

	# POST /session
	# create a new session for the user
	def create
		couple = Couple.find_by(username: params[:username])
		if couple && couple.authenticate(params[:password])
			session[:couple_id] = couple.id
			redirect_to "/landing"
		else
			redirect_to "/session/new"
		end
	end

	# DELETE /session/:id
	# log out of a user's session
	def destroy
		reset_session
		redirect_to "/"
	end

end

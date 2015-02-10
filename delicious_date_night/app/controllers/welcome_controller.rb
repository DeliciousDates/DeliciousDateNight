class WelcomeController < ApplicationController
	
	# GET '/'
	# render welcome page
	def index
		# if current_user
		# 	render html: 'logged'
		# else
		# 	render html: 'not logged in'
		# end
	end

	# GET '/about'
	# render FAQ page
	def about
		render(:about)
	end

	# GET '/landing'
	# render landing page
	def landing
		if session[:couple_id]
			@couple = Couple.find(session[:couple_id])
			@couples = Couple.where("id != #{session[:couple_id]}")
			@foods = Food.all
			@events = Event.all
			render(:landing)
		else
			redirect_to '/'
		end
	end

end
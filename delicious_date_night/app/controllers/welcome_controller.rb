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
		@couples = Couple.all
		@foods = Food.all
		@events = Event.all
		render(:landing)
	end

end
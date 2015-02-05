class WelcomeController < ApplicationController
	
	def index
		# if current_user
		# 	render html: 'logged'
		# else
		# 	render html: 'not logged in'
		# end
	end

	def about
	render(:about)
	end

	def landing
		
	end

end
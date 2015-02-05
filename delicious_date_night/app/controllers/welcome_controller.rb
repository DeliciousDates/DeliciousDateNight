class WelcomeController < ApplicationController
	def index
		# if current_user
		# 	render html: 'logged'
		# else
		# 	render html: 'not logged in'
		# end
	end

	def faq
	render(:faq)
	end
end
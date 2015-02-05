module ApplicationHelper
	def current_user
  		@current_user ||= Couple.find_by({id: session[:couple_id]})
 	end
end

class Couple < ActiveRecord::Base
	has_many :dates
	has_many :favorites
	has_many :events, {through: :favorites}
	self.has_secure_password
	self.has_many :dates
	self.has_many :favorites
	self.has_many :events, {through: :favorites}

	# authorize a user based on his or her session id
	def authorize(couple)
    unless couple.id == session[:couple_id]
      render(text: 'Unauthorized', status: 401) and return true
    end

    return false
  end

end

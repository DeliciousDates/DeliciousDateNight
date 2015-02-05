class Couple < ActiveRecord::Base
	self.has_secure_password
	self.has_many :dates
	self.has_many :favorites
	self.has_many :events, {through: :favorites}
end

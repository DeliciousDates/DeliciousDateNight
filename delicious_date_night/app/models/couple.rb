class Couple < ActiveRecord::Base
	has_many :dates
	has_many :favorites
	has_many :events, {through: :favorites}
	self.has_secure_password
	self.has_many :dates
	self.has_many :favorites
	self.has_many :events, {through: :favorites}
end

class Couple < ActiveRecord::Base
	self.has_many :dates
	self.has_many :favorites
	self.has_many :events, {through: :favorites}
end

class Activity < ActiveRecord::Base
	self.has_many :dates, {through: :events}
	self.has_many :events
end

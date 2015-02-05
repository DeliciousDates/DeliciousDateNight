class DateNight < ActiveRecord::Base
	self.belongs_to :couple
	self.belongs_to :event
end

class Event < ActiveRecord::Base
	self.belongs_to :couple
	self.belongs_to :food
	self.belongs_to :drink
	self.belongs_to :activity
	self.has_many :couples, {through: :favorites}
end

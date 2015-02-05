class Event < ActiveRecord::Base
	belongs_to :couple
	belongs_to :food
	belongs_to :drink
	belongs_to :activity
	has_many :couples, {through: :favorites}
end

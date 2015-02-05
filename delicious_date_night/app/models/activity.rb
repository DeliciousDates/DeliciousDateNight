class Activity < ActiveRecord::Base
	has_many :dates, {through: :events}
	has_many :events
end

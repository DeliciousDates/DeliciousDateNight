class Couple < ActiveRecord::Base
	has_many :dates, :favorites
	has_many :events, {through: :favorites}
end

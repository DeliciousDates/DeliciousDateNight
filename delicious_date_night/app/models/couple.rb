class Couple < ActiveRecord::Base
	has_many :dates,
	has_many :favorites,
	has_many :events, {through: :favorites}
end

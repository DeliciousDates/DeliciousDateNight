class Couple < ActiveRecord::Base
<<<<<<< HEAD
	has_many :dates
	has_many :favorites
	has_many :events, {through: :favorites}
=======
	self.has_secure_password
	self.has_many :dates
	self.has_many :favorites
	self.has_many :events, {through: :favorites}
>>>>>>> bcc063cb90b7bdd5305e3fade5e021924e94a624
end

class Couple < ActiveRecord::Base
	has_many :dates
	has_many :favorites
	has_many :events, {through: :favorites}
	self.has_secure_password
	self.has_many :dates
	self.has_many :favorites
	self.has_many :events, {through: :favorites}

	# authorize a user based on his or her session id
	def authorize(couple)
    unless couple.id == session[:couple_id]
      render(text: 'Unauthorized', status: 401) and return true
    end

    return false
  end

	self.has_attached_file :avatar, 
	:path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
	:url => "/system/:attachment/:id/:basename_:style.:extension",
	:styles => {
  :thumb    => ['100x100#',  :jpg, :quality => 70],
  :preview  => ['480x480#',  :jpg, :quality => 70],
  :large    => ['600>',      :jpg, :quality => 70]
	}
	  self.validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	end











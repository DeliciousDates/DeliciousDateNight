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
  :preview  => ['480x480#',  :jpg, :quality => 70]
	}
	  self.validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	  self.validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes
		self.validates_attachment :avatar, :presence => true
 #  :content_type => { :content_type => "image/jpeg" }
 #  # :size => { :in => 0..10.kilobytes }
	end













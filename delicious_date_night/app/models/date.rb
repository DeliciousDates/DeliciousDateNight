class Date < ActiveRecord::Base
	belongs_to :couple
	belongs_to :event
end

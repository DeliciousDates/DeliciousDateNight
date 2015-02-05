class DatesAndCouplesController < ApplicationController
	def show
		@couples = Couple.all
	end
end
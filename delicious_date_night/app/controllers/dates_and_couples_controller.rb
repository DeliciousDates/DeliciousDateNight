class DatesAndCouplesController < ApplicationController
	def show
		binding.pry
		Couple.all
	end
end
class DateNightsController < ApplicationController

	def new
		@date_night = DateNight.new
	end

	def create
		
	end

	def edit
		@date_night = DateNight.find(params[:id])
	end

	def show
		
	end

	def update
		
	end

	def destroy
		
	end

end

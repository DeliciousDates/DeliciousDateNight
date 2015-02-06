class DateNightsController < ApplicationController

	def new
		@date_night = DateNight.new
		if params["receiver_id"]
			@couple = Couple.find(params["receiver_id"])
		end
		if params["event_id"]
			@event = Event.find(params["event_id"])
		end
	end

	def create
		
	end

	def edit
		@date_night = DateNight.find(params[:id])
	end

	def show
		@date_night = DateNight.find(params[:id])
		@couple = Couple.find(@date_night.receiver_id)
	end

	def update
		
	end

	def destroy
		
	end

end

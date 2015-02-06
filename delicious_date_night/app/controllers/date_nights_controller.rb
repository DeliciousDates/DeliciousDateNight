class DateNightsController < ApplicationController

	# GET /couples/:couple_id/date_nights/new
	# render new date form, with possibly pre-selected categories
	def new
		@couple = Couple.find(params[:couple_id])
		@date_night = DateNight.new
		if params["receiver_id"]
			@receiver = Couple.find(params["receiver_id"])
		end
		if params["event_id"]
			@event = Event.find(params["event_id"])
		end
		@receivers = Couple.all
		@events = Event.all
	end

	# POST /couples/:couple_id/date_nights
	# create new date instance
	def create
		initiator = Couple.find(params[:couple_id])
		receiver = Couple.find(params[:receiver])
		event = Event.find(params[:event])

		date_night = DateNight.create({initiator_id: initiator.id, receiver_id: receiver.id, event_id: event.id, meeting_location: params[:meeting_location], start_date: params[:start_date]})

		redirect_to "/date_nights/#{date_night.id}"
	end

	# GET /date_nights/:id/edit
	# edit the details of a particular date (only receiver or initiator can do this)
	def edit
		@date_night = DateNight.find(params[:id])
	end

	# GET /date_nights/:id
	# get date night details
	def show
		@date_night = DateNight.find(params[:id])
		@couple_b = Couple.find(@date_night.receiver_id)
		@couple_a = Couple.find(@date_night.initiator_id)
	end

	# POST /date_nights/:id
	# update date details and save to database
	def update
		binding.pry
	end

	# DELETE /date_nights/:id
	# cancel a date
	def destroy
		date_night = DateNight.find(params[:id])
		date_night.destroy
		redirect_to "/landing"
	end

end

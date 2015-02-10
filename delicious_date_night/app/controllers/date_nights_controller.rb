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
		@receivers = Couple.where("id != #{params[:couple_id]}")
		@events = Event.all
	end

	# POST /couples/:couple_id/date_nights
	# create new date instance
	def create
		initiator = Couple.find(params[:couple_id])
		receiver = Couple.find(params[:receiver])
		event = Event.find(params[:event])
		start_date = DateTime.parse(params[:start_date])

		date_night = DateNight.create({initiator_id: initiator.id, receiver_id: receiver.id, event_id: event.id, meeting_location: params[:meeting_location], start_date: start_date, date_occurred: false})

		initiator_emails = [initiator.a_email, initiator.b_email]
		initiator_emails.each do |email|
			client = SendGrid::Client.new(api_user: 'gretchenziegler', api_key: '8DinosaurCupcakes')
			client.send(SendGrid::Mail.new(to: email, from: 'gretchenziegler@gmail.com', subject: 'You Booked a Delicious Date!', html: '<h1>What a Delicious Date!</h1><br><p>Go <a href="/date_nights/#{date_night.id}">check out the details</a> or send a message!</p>'))
		end

		receiver_emails = [receiver.a_email, receiver.b_email]
		receiver_emails.each do |email|
			client = SendGrid::Client.new(api_user: 'gretchenziegler', api_key: '8DinosaurCupcakes')
			client.send(SendGrid::Mail.new(to: email, from: 'gretchenziegler@gmail.com', subject: "You've Been Invited on a Delicious Date!", html: '<h1>Someone has invited you on a date!</h1><br><p>Go <a href="/date_nights/#{date_night.id}">check out the details</a> and send them a message to accept!</p>'))
		end

		redirect_to "/date_nights/#{date_night.id}"
	end

	# GET /date_nights/:id/edit
	# edit the details of a particular date (only receiver or initiator can do this)
	def edit
		@date_night = DateNight.find(params[:id])
		receiver_id = @date_night.receiver_id
		initiator_id = @date_night.initiator_id 
		if session[:couple_id] == initiator_id || session[:couple_id] == receiver_id
			events = Event.all
			@options = []
			events.each do |event|
				@options.push([event.event_theme, event.id])
			end
		else
			redirect_to "/landing"
		end
	end

	# GET /date_nights/:id
	# get date night details
	def show
		@date_night = DateNight.find(params[:id])
		receiver_id = @date_night.receiver_id
		initiator_id = @date_night.initiator_id 
		if session[:couple_id] == initiator_id || session[:couple_id] == receiver_id
			@couple_a = Couple.find(session[:couple_id])
			if @couple_a.id == receiver_id
				@couple_b = Couple.find(initiator_id)
			else
				@couple_b = Couple.find(receiver_id)
			end
		else
			redirect_to "/landing"
		end
	end

	# PUT /date_nights/:id
	# update date details and save to database
	def update
		date_night = DateNight.find(params[:id])
		date_night.meeting_location = params[:meeting_location]
		date_night.start_date = DateTime.parse(params[:start_date])
		date_night.event_id = params["date_night"][:event_id]

		date_night.save
		redirect_to action: "show", id: date_night.id
	end

	# DELETE /date_nights/:id
	# cancel a date
	def destroy
		date_night = DateNight.find(params[:id])
		couple = Couple.find(date_night.initiator_id)
		date_night.destroy

		# change redirect_to "/landing" once it's fixed!
		redirect_to "/profile"
	end

end

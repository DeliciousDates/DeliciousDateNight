class EventsController < ApplicationController

	# GET 'couple/:couple_id/events/new'
	# get event creation form
	def new
		@foods = Food.all
		@drinks = Drink.all
		@activities = Activity.all
		@id = params[:couple_id]

	end

	# POST 'couple/:couple_id/events'
	# create new event instance assigned to a couple
	def create
		Event.create({food_id: params[:food], drink_id: params[:drink], event_theme: params[:theme], couple_id: params[:couple_id]})
		redirect_to("/couples/" + params[:couple_id] + "/events")
	end

	# GET 'events/:id'
	# show a particular event and its details
	def show
		@event = Event.find(params[:id])
	end

	# GET 'couples/:couple_id/events/:id/edit'
	# get event edit form
	def edit

	end

	# PUT 'couples/:couple_id/events/:id'
	# change event information in database
	def update

	end

	# DELETE '/couples/:couple_id/events/:id'
	# delete event from database
	def destroy

	end

end
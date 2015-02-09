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
		Event.create({food_id: params[:food], drink_id: params[:drink], activity_id: params[:activity], event_theme: params[:theme], couple_id: params[:couple_id]})
		redirect_to("/couples/" + params[:couple_id] + "/profile")
	end

	# GET 'events/:id'
	# show a particular event and its details
	def show
		@event = Event.find(params[:id])
	end

	# GET 'couples/:couple_id/events/:id/edit'
	# get event edit form
	def edit
		@event = Event.find(params[:id])
		@foods = Food.all
		@drinks = Drink.all
		@activities = Activity.all
		@id = params[:couple_id]
	end

	# PUT 'couples/:couple_id/events/:id'
	# change event information in database
	def update
		@event = Event.find_by(id: params[:id])
		updated = @event.update({food_id: params[:food], drink_id: params[:drink], activity_id: params[:activity], event_theme: params[:theme], couple_id: params[:couple_id]})
		redirect_to("/couples/" + params[:couple_id])
	end

	# DELETE '/couples/:couple_id/events/:id'
	# delete event from database
	def destroy
		event = Event.find_by(id: params[:id])
		Event.destroy(event)
		redirect_to("/landing")
	end

end

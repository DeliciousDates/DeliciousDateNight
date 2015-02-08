class EventsController < ApplicationController

	def new
		@foods = Food.all
		@drinks = Drink.all
		@activities = Activity.all
		@id = params[:couple_id]

	end

	def create
		Event.create({food_id: params[:food], drink_id: params[:drink], activity_id: params[:activity], event_theme: params[:theme], couple_id: params[:couple_id]})
		redirect_to("/couples/" + params[:couple_id])
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
	
	end

	def update

	end

	def destroy

	end

end
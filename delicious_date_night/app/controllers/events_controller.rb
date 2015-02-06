class EventsController < ApplicationController

	def new
		@foods = Food.all
		@drinks = Drink.all
		@activities = Activity.all
		@id = params[:couple_id]

	end

	def create
		Event.create({food_id: params[:food], drink_id: params[:drink], event_theme: params[:theme], couple_id: params[:couple_id]})
		redirect_to("/couples/" + params[:couple_id] + "/events")
	end

	def show
		@event = Event.find(params[:id])
<<<<<<< HEAD

=======
>>>>>>> 7afd0ca10936918987690fad85b79c034c180e81
	end

	def edit

	end

	def update

	end

	def destroy

	end

end
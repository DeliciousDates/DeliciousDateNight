class EventsController < ApplicationController

	def new

	end

	def create
		@id = params[:couple_id]
	end

	def show
		@event = Event.find(params[:id])
		# //find the event by the event id, no need for couple id.
	end

	def edit

	end

	def update

	end

	def destroy

	end

end
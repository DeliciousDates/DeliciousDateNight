class EventsController < ApplicationController

	def new

	end

	def create

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
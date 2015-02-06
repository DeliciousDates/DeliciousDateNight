class CouplesController < ApplicationController

	def show
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	def new
		
	end

	def create
		
	end

	def profile
		@couple = Couple.find(params[:id])
		@date_nights = DateNight.where("receiver_id = ? OR initiator_id = ?", params[:id], params[:id])
	end

end
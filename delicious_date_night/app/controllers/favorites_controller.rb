class FavoritesController < ApplicationController

	# POST couples/:couple_id/favorites
	# create new favorite event for a couple
	def create
		@favorite = Favorite.create({couple_id: params[:couple_id], event_id: params[:event_id]})
		redirect_to "/profile"
	end

	# DELETE couples/:couple_id/favorites/:id
	# delete a couple's favorite event
	def destroy
		favorite = Favorite.find(params[:id])
		favorite.destroy
		redirect_to "/profile"
	end

end


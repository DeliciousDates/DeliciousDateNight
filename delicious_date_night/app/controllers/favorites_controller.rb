class FavoritesController < ApplicationController

	# POST couples/:couple_id/favorites
	# create new favorite event for a couple
	def create
		@favorite = Favorite.create({couple_id: couple.id, event_id: event.id})
	end

	# DELETE couples/:couple_id/favorites/:id
	# delete a couple's favorite event
	def destroy
		favorite = Favorite.find(params[:id])
		favorite.destroy
		redirect "/couples/#{params[:couple_id]}/profile"
	end

end


class CouplesController < ApplicationController

	# GET /couples/:id
	# get the information for couples that are not the user
	def show
		@couple = Couple.find(params[:id])
	end

	# GET couples/:id/edit
	# get couple profile edit form
	def edit
# binding.pry
		@id = (params[:id])
		@couple = Couple.find(params[:id])
	end

	# PUT couples/:id
	# update user couple info in database
	def update
		@id = (params[:id])
		@couple = Couple.find(params["id"])
		@couple.update(a_fname: params["a_fname"], a_lname: params["a_lname"], a_age: params["a_age"], a_gender: params["a_gender"], a_email: params["a_email"], b_fname: params["b_fname"], b_lname: params["b_lname"], b_age: params["b_age"], b_gender: params["b_gender"], b_email: params["b_email"], picture_url: params["picture_url"], description: params["description"], avatar: params[:avatar])

		redirect_to "/couples/#{@couple.id}/profile"
	end

	# DELETE '/couples/:id"
	# delete couple from the database
	def destroy
		couple = Couple.find(params[:id])
		couple.destroy
		redirect_to "/landing"
	end

	# GET /couples/new
	# get new couple form
	def new
		@couple = Couple.new
	end

	# POST /couples
	# add new couple instance to the database
	def create
		@couple = Couple.create({a_fname: params["a_fname"], a_lname: params["a_lname"], a_age: params["a_age"], a_gender: params["a_gender"], a_email: params["a_email"], b_fname: params["b_fname"], b_lname: params["b_lname"], b_age: params["b_age"], b_gender: params["b_gender"], b_email: params["b_email"], description: params["description"], password: params[:password], username: params[:username], avatar: params[:avatar]})

		redirect_to "/session/new"
	end

	# GET /couples/:id/profile
	# get current user couple's information
	def profile
		@couple = Couple.find(params[:id])
		if session[:couple_id] == @couple.id
			@date_nights = DateNight.where("receiver_id = ? OR initiator_id = ?", params[:id], params[:id])
		else
			redirect_to "/landing"
		end
	end

	private

	def user_params
	  params.require(:couple).permit(:avatar)
	end


end
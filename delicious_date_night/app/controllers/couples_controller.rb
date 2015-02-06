class CouplesController < ApplicationController

	def show
		@couple = Couple.find(params[:id])
	end

	def edit
# binding.pry
		@id = (params[:id])
		@couple = Couple.find(params[:id])
	end

	def update
		@id = (params[:id])
		@couple = Couple.find(params["id"])
		@couple.update(a_fname: params["a_fname"], a_lname: params["a_lname"], a_age: params["a_age"], a_gender: params["a_gender"], a_email: params["a_email"], b_fname: params["b_fname"], b_lname: params["b_lname"], b_age: params["b_age"], b_gender: params["b_gender"], b_email: params["b_email"], picture_url: params["picture_url"], description: params["description"])
		redirect_to "/about"
	end

	def destroy
		
	end

	def new
		
	end

	def create
		
	end

end
class RestaurantsController < ApplicationController


	def index
		@restaurants = Restaurant.all
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant].permit(:title))
		@restaurant.save

		redirect_to ('/')
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end




end
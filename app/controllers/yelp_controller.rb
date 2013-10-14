class YelpController < ApplicationController


	def index
		@restaurants = Restaurant.all
	end

	def create
		@restaurant = Restaurant.new params[:title]
	end

	def show
		@restaurant = Restaurant.find(params[:title])
	end




end
class UserController < ApplicationController


	def index
		@user = User.new #All or new?
	end

	def create
		@user = User.new
		@user = User.find(params[:user])
		@review = Review.new(:reviewcontent=>params[:review][:reviewcontent])
		@review.save
		@restaurant.reviews << @review

		redirect_to (@review.restaurant)
	end

	def show
		@user = User.find(params[:id])
	end




end
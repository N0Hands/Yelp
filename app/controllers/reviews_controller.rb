class ReviewsController < ActionController::Base

	def index
		@review = Review.all
	end

	def create
		@review = Review.new(params[:title])
		@review.save

		redirect_to ('/')
	end

	def show
		@review = Review.find(params[:reviewcontent][:restaurant_id])
	end



end
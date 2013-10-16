class ReviewsController < ActionController::Base

	def index
		@reviews = Review.where(:restaurant_id=>params[:restaurant_id])
		# render json: @reviews.to_json
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])


		@review = Review.new(:reviewcontent=>params[:review][:reviewcontent])
		@review.save
		@restaurant.reviews << @review

		redirect_to (@review.restaurant)
	end

	def show
		@review = Review.find(params[:id])
	end



end
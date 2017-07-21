class ReviewsController < ApplicationController	
	def index
		redirect_to movies_path
	end

	def show
		@review = Review.find(params[:id])
	end

	def edit
		@review = Review.find(params[:id])
		if @review.user_id != current_user.id
			redirect_to movies_path
		end
	end

	def new
		@review = Review.new
	end

	def create
		@review = Review.create(review_params)
		@review.user_id = current_user.id
		@review.save
		redirect_to movies_path
	end

	def update
		@review = Review.find(params[:id])
		@review.update(review_params)
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to movie_path(@review.movie_id)
	end

	private
		def review_params
	      params.require(:review).permit(:movie_id, :comment, :score, :judgement)
	    end
end	
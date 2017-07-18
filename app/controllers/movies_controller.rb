class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
		@reviews = @movie.reviews
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.create(movie_params)
		@movie.save
		redirect_to @movie
	end

	def update
		@movie.update(movie_params)
		redirect_to @movie
	end

	def destroy
		@movie.destroy
	end

	private
		def movie_params
	      params.require(:movie).permit(:title, :year, :director, :description)
	    end
end
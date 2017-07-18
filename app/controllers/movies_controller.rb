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
		@movie = Movie.new(movie_params)
	end

	private
		def movie_params
	      params.require(:movie).permit(:title, :year, :director, :description)
	    end
end
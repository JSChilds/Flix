class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
		@reviews = @movie.reviews

		if user_signed_in?
			movie_seen = @movie.users.exists? current_user.id
			if movie_seen
				@seen_text = "You've seen this movie"
			else
				@seen_text = "You haven't seen this movie"
			end
		end
	end

	def edit
		@movie = Movie.find(params[:id])
		if !current_user.is_admin
			redirect_to movies_path
		end
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
		@movie = Movie.find(params[:id])
		@movie.update(movie_params)
		redirect_to @movie
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
	end

	def seen_movie
		@movie = Movie.find(params[:id])

		if @movie.users.exists? current_user.id
			@movie.users.delete(current_user.id)
		else
			@movie.users.push(current_user)
		end
		redirect_to @movie
	end


	private
		def movie_params
	      params.require(:movie).permit(:title, :year, :director, :description)
	    end
end
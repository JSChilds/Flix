# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!({
	name: "JoeChilds",
	email: "joe@hotmail.com",
	encrypted_password: 'password',
	password: "password",
	is_admin: true
})

movie1 = Movie.create!({
	title: "Back to the Future",
	year: 1985,
	description: "A teenager from 1985 travels back in time to 1955 and has to help his parents fall in love.",
	director: "Robert Zemeckis",
	image: File.new("app/assets/images/BTTF.png"),
	rating: 9
})

movie2 = Movie.create!({
	title: "Inception",
	year: 2010,
	description: "A thief who enters people's dreams must perform the seemingly-impossible act of inception if he ever wants to see his children again.",
	director: "Christopher Nolan",
	image: File.new("app/assets/images/Inception.png"),
	rating: 9
})

movie3 = Movie.create!({
	title: "Jumanji",
	year: 1995,
	description: "Robin Williams gets sucked into a board game and there are CGI animals.",
	director: "Joe Johnston",
	image: File.new("app/assets/images/Jumanji.png"),
	rating: 5
})

movie4 = Movie.create!({
	title: "Taxi Driver",
	year: 1976,
	description: "A socially-awkward taxi driver edges towards violent madness in 1970s New York.",
	director: "Martin Scorsese",
	image: File.new("app/assets/images/TaxiDriver.png"),
	rating: 8
})

review1 = Review.create!({
	movie_id: movie1.id,
	user_id: user1.id,
	comment: "The greatest movie ever made.",
	score: 9,
	judgement: true
})

review2 = Review.create!({
	movie_id: movie2.id,
	user_id: user1.id,
	comment: "A visually-stunning thrill ride.",
	score: 9,
	judgement: true
})

review3 = Review.create!({
	movie_id: movie3.id,
	user_id: user1.id,
	comment: "Honestly, not very good.",
	score: 4,
	judgement: false
})

review4 = Review.create!({
	movie_id: movie4.id,
	user_id: user1.id,
	comment: "An incredibly intense performance from Robert De Niro.",
	score: 8,
	judgement: true
})

UserMovie.create!({
	user_id: user1.id,
	movie_id: movie1.id
})

UserMovie.create!({
	user_id: user1.id,
	movie_id: movie2.id
})

UserMovie.create!({
	user_id: user1.id,
	movie_id: movie3.id
})

UserMovie.create!({
	user_id: user1.id,
	movie_id: movie4.id
})
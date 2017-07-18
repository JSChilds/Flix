# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!({
	email: "joe@hotmail.com",
	encrypted_password: 'password',
	password: "password"
})

movie1 = Movie.create!({
	user_id: user1.id,
	title: "Back to the Future",
	year: 1985,
	description: "A teenager from 1985 travels back in time to 1955 and has to help his parents fall in love.",
	director: "Robert Zemeckis",
	rating: 9
})

movie2 = Movie.create!({
	user_id: user1.id,
	title: "Inception",
	year: 2010,
	description: "A theif who enters people's dreams must perform the seemingly-impossible act of inception if he ever wants to see his children again.",
	director: "Christopher Nolan",
	rating: 9
})

movie3 = Movie.create!({
	user_id: user1.id,
	title: "Jumanji",
	year: 1995,
	description: "Robin Williams gets sucked into a board game and there are CGI animals.",
	director: "Joe Johnston",
	rating: 5
})

movie4 = Movie.create!({
	user_id: user1.id,
	title: "Taxi Driver",
	year: 1976,
	description: "A socially-awkward taxi driver edges towards violent madness in 1970s New York.",
	director: "Martin Scorsese",
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
	comment: "Honestly, it looks pretty bad.",
	score: 5,
	judgement: true
})

review4 = Review.create!({
	movie_id: movie4.id,
	user_id: user1.id,
	comment: "An incredibly intense performance from Robert De Niro.",
	score: 8,
	judgement: true
})
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Anime.destroy_all
User.destroy_all

#Anime
yu_yu_hakusho = Anime.create(name: "Yu Yu Hakusho", description: "Shounen")
dragon_ball = Anime.create(name: "Dragon Ball", description: "Shounen")
sailor_moon = Anime.create(name: "Sailor Moon", description: "Shoujo")
gundam = Anime.create(name: "Gundam", description: "Mecha")
wolfs_rain = Anime.create(name: "Wolf's Rain", description: "drama")
code_geas = Anime.create(name: "Code Geas", description: "drama")
evangalion = Anime.create(name: "Evangalion", description: "Mecha")
highschool_of_the_dead = Anime.create(name: "Highschool of the Dead", description: "Post-Apocolyptic")
yuri_on_ice = Anime.create(name: "Yuri on Ice", description: "Romance")
fairytail = Anime.create(name: "Fairytail", description: "Shonen")
the_seven_deadly_sins = Anime.create(name: "The Seven Deadly Sins", description: "Fantasy")

#User
alex = User.create(username: "Alex", password_digest: "password")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Anime.destroy_all
Anime.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Post.destroy_all
Post.reset_pk_sequence 

#Anime
yu_yu_hakusho = Anime.create(name: "Yu Yu Hakusho", description: "Shounen, With the support of his girlfriend and friends, Yusuke learns to accept that he is a member of both the <strinke-through>straight and lgbt</strike-through> human and demon community")
dragon_ball = Anime.create(name: "Dragon Ball", description: "Shounen, Dragon Ball follows the adventures of the protagonist Goku, a strong naive boy who, upon meeting Bulma, sets out to gather the seven wish-granting Dragon Balls.")
sailor_moon = Anime.create(name: "Sailor Moon", description: "Shoujo, Sailor Moon who fights with friends to protect humanity")
gundam = Anime.create(name: "Gundam", description: "Mecha, Commentary on the futility of war and the Cold War arms race - and big robots fight!")
wolfs_rain = Anime.create(name: "Wolf's Rain", description: "Drama, sentient wolves look for mythical Paradise")
code_geas = Anime.create(name: "Code Geas", description: "Drama, Rebellion of occupied nation")
evangalion = Anime.create(name: "Evangalion", description: "Mecha, Boy with family trauma fights aliens")
highschool_of_the_dead = Anime.create(name: "Highschool of the Dead", description: "Post-Apocolyptic")
yuri_on_ice = Anime.create(name: "Yuri on Ice", description: "Romance")
fairytail = Anime.create(name: "Fairytail", description: "Shonen")
the_seven_deadly_sins = Anime.create(name: "The Seven Deadly Sins", description: "Fantasy")

#User
alex = User.create(username: "Alex", password_digest: "password")

#Post
sailor_moon_blog = Post.create(title: "Neptune and Uranus", content: "true love", anime_id: 3, tag_id: 1)

#Tag
shounen = Tag.create(genre: "Shounen")

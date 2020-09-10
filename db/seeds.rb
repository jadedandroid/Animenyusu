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

evangalion = Anime.create(name: "Evangalion", description: "Mecha: ifteen years after a global cataclysm known as the Second Impact, teenager Shinji Ikari is summoned to the futuristic city of Tokyo-3 by his estranged father Gendo Ikari, director of the special paramilitary force Nerv. ... In his second battle, Shinji destroys an Angel but runs away afterwards, distraught.")
highschool_of_the_dead = Anime.create(name: "Highschool of the Dead", description: "Post-Apocolyptic, he story follows a group of high school students, the high school's nurse, and a young girl as they fight their way to safety through the deadly streets of Japan during a worldwide catastrophic event known as the Outbreak")
yuri_on_ice = Anime.create(name: "Yuri on Ice", description: "Romance: Japanese figure skater Yuri Katsuki faces a crushing defeat during the Grand Prix finals and heads home, unsure of whether or not he wishes to continue his skating career. After a video of Yuri mimicking Russian figure skater Victor Nikiforov's routine goes viral, Victor decided to become Yuri's coach, much to the dismay of his coach, his fans, and his fellow Russian skater Yuri Plisetsky.
After a disgrace in the Grand Prix Final, Japanese figure skater Katsuki Yuri seeks to retire. Victor Nikiforov, Russian world champion in figure skating is known for his surprises but is feeling stuck when he realises he has no more surprises left. When Yuri dances to Victor's most famous routine 'Stay Close to Me' the video is posted online and is seen by Victor. In this moment the Russian world champion decides to move to Japan and become Yuri's coach. Over the course of various competitions, the two form a powerful bond and see that each other was all they needed to accomplish what both had hoped for. Love.")
fairytail = Anime.create(name: "Fairytail", description: "Shonen: Lucy Heartfilia, a traveling Mage, meets Natsu Dragneel, a Mage looking for his foster parent, a Dragon named Igneel, with his best friend, Happy, a blue, talking and flying cat. Shortly after their meeting, Lucy is abducted by Bora of Prominence, who was posing as Salamander of Fairy Tail, to be sold as a slave. Natsu rescues her and reveals that he is the real Salamander of Fairy Tail and has the skills of a Dragon Slayer, a form of Lost Magic. He offers her membership into the guild, which she gladly accepts. They, along with the armored Mage Erza Scarlet, Ice-Make Mage Gray Fullbuster, and Happy, become a team performing various missions offered to the Fairy Tail Guild.")
the_seven_deadly_sins = Anime.create(name: "The Seven Deadly Sins", description: "Fantasy: he Seven Deadly Sins were the strongest and cruelest chivalric order in the kingdom, formed by seven brutal criminals who carved symbols of seven beasts into their bodies. Ten years ago, they were accused of plotting to overthrow the kingdom, and disintegrated after all the Holy Knights launched a general offensive against them.")
yu_yu_hakusho = Anime.create(name: "Yu Yu Hakusho", description: "Shounen, With the support of his girlfriend and friends, Yusuke learns to accept that he is a member of both the <strinke-through>straight and gay</strike-through> human and demon community")
#yu_yu_hakusho = Anime.create(name: "Yu Yu Hakusho", description: "Shounen, With the support of his girlfriend and friends, Yusuke learns to accept that he is a member of both the <strinke-through>straight and lgbt</strike-through> human and demon community")
dragon_ball = Anime.create(name: "Dragon Ball", description: "Shounen, Dragon Ball follows the adventures of the protagonist Goku, a strong naive boy who, upon meeting Bulma, sets out to gather the seven wish-granting Dragon Balls.")
sailor_moon = Anime.create(name: "Sailor Moon", description: "Shoujo, Sailor Moon who fights with friends to protect humanity")
gundam = Anime.create(name: "Gundam", description: "Mecha, Commentary on the futility of war and the Cold War arms race - and big robots fight!")
wolfs_rain = Anime.create(name: "Wolf's Rain", description: "Drama, sentient wolves look for mythical Paradise")
code_geas = Anime.create(name: "Code Geas", description: "Drama, Rebellion of occupied nation")

#User
alex = User.create(username: "Alex", password_digest: "password")

#Post
sailor_moon_blog = Post.create(title: "Neptune and Uranus", content: "true love", anime_id: 3, tag_id: 1)

#Tag
shounen = Tag.create(genre: "Shounen")
drama = Tag.create(genre: "drama")
mecha = Tag.create(genre: "Mecha")
romance = Tag.create(genre: "Romance")
post_apocolyptic = Tag.create(genre: "Post Apocolyptic")
shoujo = Tag.create(genre: "shoujo")
fantasy = Tag.create(genre: "fantasy")
magical = Tag.create(genre: "Magical")
action = Tag.create(genre: "Action")
superpower = Tag.create(genre: "superpower")


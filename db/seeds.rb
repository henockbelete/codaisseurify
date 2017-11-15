# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!( { name: "Teddy Afro", age: 41, nationality: "Ethiopian", image_url: "https://tinyurl.com/y8y43wsr" } )
artist2 = Artist.create!( { name: "Tilahul Gesese", age: 68, nationality: "Ethiopian", image_url: "https://tinyurl.com/yapkoo8o" } )


song1 = Song.create!( { genre: "hip hop", song_name: "Mar eske tuaf", duration: "5 min", song_url: "https://www.youtube.com/watch?v=u2inQ1WeaFs", artist: artist1 } )
song2 = Song.create!( { genre: "hip hop", song_name: "Etege", duration: "6 min", song_url: "https://www.youtube.com/watch?v=on_NrWN3xtc", artist: artist1 } )
song3 = Song.create!( { genre: "blues like", song_name: "Felige Asfelige", duration: "7 min", song_url: "https://www.youtube.com/watch?v=0Glt4jG-eQQ", artist: artist2 } )
song4 = Song.create!( { genre: "blues like", song_name: "Wub Aynama", duration: "6 min", song_url: "https://www.youtube.com/watch?v=IoIvS2ZsGhs", artist: artist2 } )

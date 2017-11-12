FactoryGirl.define do
  factory :artist do
    name         "Teddy Afro"
    age          2
    nationality  "Ethiopian"
    image_url    "https://tinyurl.com/y8xm78ec"
  end
end


song1 = Song.create!( { genre: "hip hop", song_name: "Mar eske tuaf", duration: "5 min", song_url: "https://www.youtube.com/watch?v=u2inQ1WeaFs", artist: artist1 } )
song2 = Song.create!( { genre: "hip hop", song_name: "Etege", duration: "6 min", song_url: "https://www.youtube.com/watch?v=on_NrWN3xtc", artist: artist1 } )
song3 = Song.create!( { genre: "blues like", song_name: "Felige Asfelige", duration: "7 min", song_url: "https://www.youtube.com/watch?v=0Glt4jG-eQQ", artist: artist2 } )
song4 = Song.create!( { genre: "blues like", song_name: "Wub Aynama", duration: "6 min", song_url: "https://www.youtube.com/watch?v=IoIvS2ZsGhs", artist: artist2 } )

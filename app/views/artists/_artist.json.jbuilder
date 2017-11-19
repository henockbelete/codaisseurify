json.extract! artist, :id, :name, :age, :nationality, :created_at, :updated_at
json.url artist_url(artist, format: :json)

# json.array!(@artists) do |json, artist|
#   json.(artist, :id, :name, :age, :nationality, :created_at, :updated_at)
#   json.songs artist.songs do |json, song|
#     json.(song, :id, :song_name, :genre, :duration)
#   end
# end
# json.url artist_url(artist, format: :json)
# json.array! @songs, as: :song
#
# json.extract! song, :id, :song_name, :genre, :duration
# json.url song_url(song, format: :json)

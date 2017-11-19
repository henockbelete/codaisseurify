# # json.array! @songs, as: :song
# #
# # json.extract! song, :id, :song_name, :genre, :duration
# # json.url song_url(song, format: :json)
# #
# #
# # json.songs artist.songs do |json, song|
# #     json.(song, :id, :song_name, :genre, :duration)
# # end
#
# json.array!(@artists) do |json, artist|
#   json.(artist, :id, :name, :age, :nationality, :created_at, :updated_at)
#   json.songs artist.songs do |json, song|
#     json.(song, :id, :song_name, :genre, :duration)
#   end
# end
#
#
# # app/views/artists/index.json.jbuilder
# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)
#   json.albums artist.albums, partial: 'albums/album', as: :album
# end
#
# # app/views/albums/_album.json.jbuilder
# json.(album, :id, :name)

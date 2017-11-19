#
# json.array! @artists, partial: 'artists/artist', as: :artist

# app/views/artists/index.json.jbuilder
json.artists @artists do |artist|
  json.(artist, :id, :name )
  json.songs artist.songs, partial: 'songs/song', as: :song
end

# json.partial! "artists/artist", artist: @artist


json.artists @artists do |artist|
  # json.(artist, :id, :name )
  json.songs artist.songs, partial: 'songs/song', as: :song
end

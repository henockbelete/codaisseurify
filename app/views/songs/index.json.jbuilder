json.array! @songs, as: :song

json.extract! song, :id, :song_name, :genre, :duration
json.url song_url(song, format: :json)

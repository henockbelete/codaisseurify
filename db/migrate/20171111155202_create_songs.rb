class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :genre
      t.string :song_name
      t.string :duration
      t.string :song_url

      t.timestamps
    end
  end
end

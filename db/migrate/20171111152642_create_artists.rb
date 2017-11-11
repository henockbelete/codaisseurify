class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.string :image_url

      t.timestamps
    end
  end
end

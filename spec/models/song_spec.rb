
require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a genre" do
      song = Song.new(genre: nil)
      song.valid?
      expect(song.errors).to have_key(:genre)
    end

    it "is invalid without song_name" do
      song = Song.new(song_name: nil)
      song.valid?
      expect(song.errors).to have_key(:song_name)
    end

    it "is invalid without a genre" do
      song = Song.new(song_url: nil)
      song.valid?
      expect(song.errors).to have_key(:song_url)
    end
  end
end

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:genre) }
    it { is_expected.to validate_presence_of(:song_name) }
    it { is_expected.to validate_presence_of(:song_url) }
  end

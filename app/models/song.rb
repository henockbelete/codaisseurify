class Song < ApplicationRecord

  

  belongs_to :artist


  validates :genre, presence: true
  validates :song_name, presence: true
  validates :song_url, presence: true, length: { maximum: 500 }

  # def self.order_by_name
  #   order(:song_name)
  # end

end

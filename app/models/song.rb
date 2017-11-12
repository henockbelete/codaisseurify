class Song < ApplicationRecord

  belongs_to :artist

  # def self.order_by_name
  #   order(:song_name)
  # end

end

class Song < ApplicationRecord

  def self.order_by_name
    order(:song_name)
  end

end

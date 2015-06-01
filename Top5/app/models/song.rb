class Song < ActiveRecord::Base
  belongs_to :artist
    belongs_to :playlist
  validates :name, presence: true
  validates :artist_id, presence: true
  validates :rating, presence: true
  validates :name, uniqueness: true

end



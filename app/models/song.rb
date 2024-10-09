class Song < ApplicationRecord
  has_and_belongs_to_many :playlists
  validates :title, :artist, :album, presence: true
end

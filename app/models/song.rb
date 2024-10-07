class Song < ApplicationRecord
  belongs_to :playlist
  validates :title, :artist, :album, presence: true
end

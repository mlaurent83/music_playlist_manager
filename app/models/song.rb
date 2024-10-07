class Song < ApplicationRecord
  belongs_to :playlist
  validates :title, presence: true
end

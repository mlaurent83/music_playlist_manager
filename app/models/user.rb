class User < ApplicationRecord
  has_many :playlists
  validates :email, presence: true, uniqueness: true
end

class User < ApplicationRecord
  has_many :playlists
  validates :email, :first_name, :last_name, presence: true, uniqueness: true
end

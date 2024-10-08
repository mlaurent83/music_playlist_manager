class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :playlists
  validates :email, :first_name, :last_name, presence: true, uniqueness: true
end

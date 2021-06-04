class User < ApplicationRecord
  has_secure_password
  has_many :social_media_posts
  validates :username, uniqueness: true
end

class User < ApplicationRecord
  has_secure_password

  has_many :pose_favs
  has_many :poses, through: :pose_favs
  has_many :mat_favs
  has_many :mats, through: :mat_favs

  validates :username, uniqueness: true
  
end

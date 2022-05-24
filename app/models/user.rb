class User < ApplicationRecord
  has_many :pose_assignments
  has_many :poses, through: :pose_assignments
  has_many :assignments
  has_many :mats, through: :assignments

end

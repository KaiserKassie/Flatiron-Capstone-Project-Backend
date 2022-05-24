class Pose < ApplicationRecord
  has_many :pose_assignments
  has_many :users, through: :pose_assignments
end

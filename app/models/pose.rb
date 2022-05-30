class Pose < ApplicationRecord
  has_many :pose_favs
  has_many :users, through: :pose_favs

  def liked?(user)
    !!self.pose_favs.find{|pose_fav| pose_fav.user_id == user.id}
  end
end
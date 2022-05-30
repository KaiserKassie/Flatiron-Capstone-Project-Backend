class Mat < ApplicationRecord
  has_many :mat_favs
  has_many :users, through: :mat_favs

  def liked?(user)
    !!self.mat_favs.find{|mat_fav| mat_fav.user_id == user.id}
  end
end
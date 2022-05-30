class PoseFav < ApplicationRecord
  belongs_to :user
  belongs_to :pose
end

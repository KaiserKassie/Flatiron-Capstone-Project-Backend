class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :poses, :mats
  has_many :poses
  has_many :mats
end

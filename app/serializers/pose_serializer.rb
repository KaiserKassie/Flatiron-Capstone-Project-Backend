class PoseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :target_body_area, :seated
end

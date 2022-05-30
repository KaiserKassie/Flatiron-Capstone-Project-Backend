class MatSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :weight, :length1, :length2, :length3, :width1, :width2, :thickness, :material, :image, :link
end

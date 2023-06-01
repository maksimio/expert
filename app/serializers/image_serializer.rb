class ImageSerializer < ActiveModel::Serializer
  attributes :id, :file, :name, :ave_value, :theme_id
end

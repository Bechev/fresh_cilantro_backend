class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :description, :likes
end

class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :color

  has_many :items
end

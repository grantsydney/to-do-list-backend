class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :lists, serializer: ListSerializer
  #has_many :items, through: :lists
end

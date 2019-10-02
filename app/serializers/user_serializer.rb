class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :about, :image, :favorites
end

class UserSerializer < ActiveModel::Serializer
  attributes :username, :about, :image
end

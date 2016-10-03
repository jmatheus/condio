class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :apartment
  has_one :reservation
end

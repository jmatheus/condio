class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :name, :token, :enabled
end

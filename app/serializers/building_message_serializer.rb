class BuildingMessageSerializer < ActiveModel::Serializer
  attributes :id, :message_title, :message_description, :created_at
  has_one :user
end

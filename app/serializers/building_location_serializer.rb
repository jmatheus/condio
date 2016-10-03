class BuildingLocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  # has_many :reservations
end

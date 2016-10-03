# == Schema Information
#
# Table name: building_locations
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BuildingLocation < ApplicationRecord
  has_many :reservations
end

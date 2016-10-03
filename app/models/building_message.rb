# == Schema Information
#
# Table name: building_messages
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  message_description :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  message_title       :string
#

class BuildingMessage < ApplicationRecord
  belongs_to :user
end

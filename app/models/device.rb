# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  name       :string
#  token      :string
#  enabled    :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Device < ApplicationRecord
end

# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  name                 :string
#  maintenance_date     :date
#  building_location_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :building_location
end

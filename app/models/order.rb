# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  order_number     :string
#  delivery_address :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :user
end

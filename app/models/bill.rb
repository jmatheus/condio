# == Schema Information
#
# Table name: bills
#
#  id         :integer          not null, primary key
#  due_month  :string
#  status     :integer
#  user_id    :integer
#  value      :decimal(8, 2)    default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bill < ApplicationRecord
  belongs_to :user

  enum status: [
    :pago,
    :em_aberto,
    :vencido
  ]
end

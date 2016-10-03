class BillSerializer < ActiveModel::Serializer
  attributes :id, :due_month, :status, :value
  has_one :user

  def status
    object.status.try(:titleize)
  end
end

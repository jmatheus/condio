# == Schema Information
#
# Table name: reservations
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  building_location_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  start_hour           :integer
#  end_hour             :integer
#  event_date           :date
#  guest_quantity       :integer          default(0)
#  reservation_name     :string
#  status               :integer          default("active")
#

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :building_location
  validate :available?, if: :new_record?
  validates :event_date, presence: true

  enum status: [:inactive, :active, :canceled, :confirmed]

  private

    def available?
      reservation = Reservation.find_by(event_date: self.event_date, building_location: self.building_location, status: 'active')
      errors.add(:event_date, "Event Date not available") unless reservation.nil?
    end

end

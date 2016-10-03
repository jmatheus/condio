# == Schema Information
#
# Table name: users
#
#  id                         :integer          not null, primary key
#  name                       :string
#  birthday                   :date
#  gender                     :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  email                      :string
#  auth_token                 :string
#  password_digest            :string
#  profile_image_id           :string
#  profile_image_filename     :string
#  profile_image_size         :integer
#  profile_image_content_type :string
#  apartment                  :string
#

class User < ApplicationRecord
  has_many :orders
  has_secure_password
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 6 }, allow_blank: true

  # attachment :profile_image, content_type: ["image/jpeg", "image/png"]

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end


end

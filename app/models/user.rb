class User < ApplicationRecord

  has_many :applications, foreign_key: 'user_id'
  has_many :properties # i.e. properties owned by this user
  has_many :owner_applications, through: :properties, source: :applications
  has_secure_password

end

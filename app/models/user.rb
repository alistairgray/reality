class User < ApplicationRecord

  has_many :applications, foreign_key: 'user_id'
  has_secure_password

end

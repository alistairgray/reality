class Property < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :applications

  #Geocoding
  after_validation :geocode
  geocoded_by :address

end

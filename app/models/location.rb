class Location < ActiveRecord::Base
  belongs_to :thermostat
  belongs_to :user

  validates :property, :room, :city, :address, :presence => true
end

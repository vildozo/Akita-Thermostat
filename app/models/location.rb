class Location < ActiveRecord::Base
  belongs_to :thermostat
  
  validates :name, presence: true
  validates :city, presence: true
  validates :ubication, presence: true
end

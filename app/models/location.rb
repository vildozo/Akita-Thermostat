class Location < ActiveRecord::Base
  belongs_to :thermostat
  
  #validates :name, presence: true
  v#alidates :city, presence: true
  #validates :ubication, presence: true
end

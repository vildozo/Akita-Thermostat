class Location < ActiveRecord::Base
  belongs_to :thermostat
  belongs_to :user
end

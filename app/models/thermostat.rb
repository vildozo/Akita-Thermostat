class Thermostat < ActiveRecord::Base
  belongs_to :user
  validates :serial, presence: true, length: { maximum: 10 }
end

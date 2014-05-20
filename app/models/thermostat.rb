class Thermostat < ActiveRecord::Base
  belongs_to :user
  has_many :locations
  validates :serial, presence: true, length: { maximum: 10 }
end

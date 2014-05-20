class Thermostat < ActiveRecord::Base
  belongs_to :user
  has_many :locations
  has_many :planners
  validates :serial, presence: true, length: { maximum: 10 }
end

class Thermostat < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :planners
  validates :serial, presence: true, length: { maximum: 10 }
end

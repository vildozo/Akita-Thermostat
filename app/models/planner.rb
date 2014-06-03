class Planner < ActiveRecord::Base
  belongs_to :thermostat

  validates :week_day, :max_temperature, :min_temperature, :schedule, presence: {:message => "Es un campo obligatorio"}
  
end

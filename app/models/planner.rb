class Planner < ActiveRecord::Base
  belongs_to :thermostat

  validates :week_day, :temp_max, :temp_min, :schedule, presence: {:message => "Es un campo obligatorio"}
  
end

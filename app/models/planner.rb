class Planner < ActiveRecord::Base
  belongs_to :thermostat

  validates :week_day, :max_temperature, :min_temperature, :schedule, presence: {:message => "Es un campo obligatorio"}
  validates :week_day,uniqueness: {case_sensitive: false, :message => "Este dia de la semana ya tiene planificacion"}	
end

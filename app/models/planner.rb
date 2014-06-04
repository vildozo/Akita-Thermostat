class Planner < ActiveRecord::Base
  belongs_to :thermostat

  validates :week_day, :temp_max, :temp_min, :schedule, presence: {:message => "Es un campo obligatorio"}

  validates :temp_max, :temp_min, numericality: {:message => "La temperatura solo permite enteros"}
  validates :temp_max, numericality: {greater_than: -20, less_than: 60, :message => "La temperatura maxima debe ser mayor a -20 y menor a 60" }
  
  validates :temp_min, numericality: {greater_than: -20, less_than: 60, :message => "La temperatura minima debe ser mayor a -20 y menor a 60" }
  
end

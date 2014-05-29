class Thermostat < ActiveRecord::Base
  belongs_to :user
  has_many :locations
  has_many :planners

  validates_presence_of :serial, :message => "no puede ser vacio"
  validates_length_of :serial, :minimum => 10, :too_short => "es muy corto (minimo 10 caracteres)"
  validates_format_of :serial, :with => /\A[A-Z0-9]+\z/, :message => "solo acepta mayusculas y numeros"
end

class Thermostat < ActiveRecord::Base
  belongs_to :user
  has_many :locations
  has_many :planners

  validates :serial,uniqueness: {case_sensitive: false, :message => "Este termostato ya fue registrado"}	
  validates :serial, presence: {:message => "Es un campo obligatorio"}
  validates :serial, length: {minimum: 5, maximum: 10, :message => "El Detalle debe tener minimo 5 y maximo 10 caracteres"}
  validates :serial, format: {with: /\A[A-Z0-9]+\z/, message: "Solo ingresar letras mayusculas y numeros"}
end

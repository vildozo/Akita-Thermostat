class Location < ActiveRecord::Base
  belongs_to :thermostat
  belongs_to :user

  validates :property, :room, :city, :address, presence:{:message => "Es un campo obligatorio"}
  validates :property, length: {minimum: 4, maximum: 20, :message => "La propiedad debe tener minimo 4 y maximo 20 caracteres"}
  validates :room, length: {minimum: 4, maximum: 20, :message => "La habitacion debe tener minimo 4 y maximo 20 caracteres"}
  validates :city, length: {minimum: 4, maximum: 20, :message => "La ciudad debe tener minimo 4 y maximo 20 caracteres"}
  validates :address, length: {minimum: 4, maximum: 20, :message => "La direccion debe tener minimo 4 y maximo 20 caracteres"}


end

class Location < ActiveRecord::Base
  has_many :thermostats
  belongs_to :user

  validates :name, :city, :address, :presence => true
end

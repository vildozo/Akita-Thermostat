class Pai < ActiveRecord::Base
	validates :nombre, :codigo, :presence => true
	 validates :codigo, length: { maximum: 2 }
	  has_many :thermostats
end

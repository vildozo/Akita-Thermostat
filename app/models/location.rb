class Location < ActiveRecord::Base
  has_many :thermostats
  belongs_to :user
  
  validates :name, presence: true
  validates :city, presence: true
  validates :ubication, presence: true
end

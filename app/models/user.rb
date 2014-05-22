class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :thermostats 
  has_many :locations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :username, presence: true, uniqueness: true
  #validates :email, format: /@/
  #validates :password, confirmation: true

  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
   end

   def change_role
     if self.role == 1
        self.role = 2
      else
        self.role = 1
     end
     self.save!
   end

   def change_enable
    if self.enable == true
      self.enable = false
    else
      self.enable = true
    end
     self.save!
   end

   after_create do
    self.role = 2 
    self.enable = true
    self.save!
   end

end



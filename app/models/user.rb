class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  validates_presence_of :name
  #Method to extract the first name from name 
  def first_name
    self.name.split.first
  end

  #Method to extract the last  name from name
  def last_name
    self.name.split.last
  end
end

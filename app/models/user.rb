class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :dares
  has_many :submits
  # attr_accessible :title, :body
end

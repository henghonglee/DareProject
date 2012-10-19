class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  
  # :lockable, :timeoutable and 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :confirmable ,:omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:provider, :uid
  has_many :dares
  has_many :submits
  # attr_accessible :title, :body
end

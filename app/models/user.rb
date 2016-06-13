class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  extend OmniauthCallbacks

  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :orders
  has_many :order_details, through: :orders
  has_many :authorizations, :dependent => :destroy

  validates_presence_of 	:email,	:password
  validates_uniqueness_of 	:email, :phone
  validates_format_of 		:email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  # validates_length_of		:password, length: { minimum: 8 }
end

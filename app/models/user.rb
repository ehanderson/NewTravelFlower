class User < ActiveRecord::Base
  include Gravtastic
  gravtastic
  
  attr_accessible :email, :name, :password
  
  has_many :questions
  has_many :answers

  validates :name, presence: true
  validates :email, format: { with: /\w+@\w+\.\w{2,3}/ }
  validates :email, uniqueness: true

  has_secure_password

end

class User < ApplicationRecord

  has_many :ratings
  has_many :comments
  has_many :hats
  has_many :hat_pics, through: :hats

  has_secure_password

  #validates_confirmation_of :password
end

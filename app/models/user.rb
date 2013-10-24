class User < ActiveRecord::Base
  attr_accessible :password, :username, :password_confirmation

  has_many :collections, :dependent => :destroy
  has_secure_password
end

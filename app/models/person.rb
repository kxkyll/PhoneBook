class Person < ActiveRecord::Base
  attr_accessible :name

  has_many :phones
  has_many :addresses
end

class Person < ActiveRecord::Base
  attr_accessible :name

  has_many :phones
  has_many :inhabitants
  has_many :addresses, :through => :inhabitants
  has_many :emails

  validates :name, :presence => {:message => "please enter name"}

  def to_s
    "#{name}"
  end
end

class Address < ActiveRecord::Base
  attr_accessible :number, :postcode, :street, :destination
  has_many :inhabitants
  has_many :people, :through => :inhabitants

  def to_s
    "#{street} #{number} #{postcode} #{destination} "
  end
  
end

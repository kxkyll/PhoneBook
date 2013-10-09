class Address < ActiveRecord::Base
  attr_accessible :number, :postcode, :street, :destination, :city
  has_many :inhabitants
  has_many :people, :through => :inhabitants

  validates_presence_of :street, :postcode, :city
  validates_numericality_of :postcode
  validates_length_of :postcode, :within => 5..10, :too_long => "max length 10 digits", :too_short => "min length 5 digits"

  def to_s
    "#{street} #{number} #{postcode} #{city} #{destination} "
  end
  
end

class Address < ActiveRecord::Base
  attr_accessible :number, :person_id, :postcode, :street, :destination
  belongs_to :person
end

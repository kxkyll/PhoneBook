class Address < ActiveRecord::Base
  attr_accessible :number, :person_id, :postcode, :street, :type
  belongs_to :person
end

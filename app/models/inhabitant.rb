class Inhabitant < ActiveRecord::Base
  attr_accessible :address_id, :person_id
  belongs_to :address
  belongs_to :person

  validates :address_id, uniqueness: {scope: :person_id, message: "already added to this person"}

end

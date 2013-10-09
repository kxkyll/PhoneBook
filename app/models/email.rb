class Email < ActiveRecord::Base
  attr_accessible :email_address, :person_id
  belongs_to :person

  validates :email_address, email_format: { message: "give email address in format xxxx@xxxxx.xx" }

  def to_s
    "#{email_address}"
  end
end

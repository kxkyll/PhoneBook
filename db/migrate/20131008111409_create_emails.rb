class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :person_id
      t.string :email_address

      t.timestamps
    end
  end
end

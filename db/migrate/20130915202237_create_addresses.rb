class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.integer :postcode
      t.string :type
      t.integer :person_id

      t.timestamps
    end
  end
end

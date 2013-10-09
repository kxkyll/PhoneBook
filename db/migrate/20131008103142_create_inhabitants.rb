class CreateInhabitants < ActiveRecord::Migration
  def change
    create_table :inhabitants do |t|
      t.integer :person_id
      t.integer :address_id

      t.timestamps
    end
  end
end

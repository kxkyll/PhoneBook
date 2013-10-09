class RemovePersonIdFromAddresses < ActiveRecord::Migration
  def up
    remove_column :addresses, :person_id, :integer
  end

  def down
    add_column :addresses, :person_id, :integer
  end
end

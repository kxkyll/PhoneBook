class RenameTypeToDestination < ActiveRecord::Migration
  def up
    rename_column :addresses, :type, :destination
  end

  def down
    rename_column :addresses, :destination, :type
  end
end

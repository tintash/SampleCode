class AlterTypeToLookups < ActiveRecord::Migration
  def up
  	rename_column :lookups, :type, :l_type
  end

  def down
   rename_column :lookups, :l_type, :type
  end
end

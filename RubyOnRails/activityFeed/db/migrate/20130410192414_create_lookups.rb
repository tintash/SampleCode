class CreateLookups < ActiveRecord::Migration
  def change
    create_table :lookups do |t|
      t.integer :id
      t.string :type

      t.timestamps
    end
  end
end

class CreateActivityFeeds < ActiveRecord::Migration
  def change
   create_table :activity_feeds do |t|
      t.integer :id
      t.integer :user_id
      t.integer :lookup_id
      t.text :json
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end
end

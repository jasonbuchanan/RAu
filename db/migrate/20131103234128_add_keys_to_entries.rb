class AddKeysToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :user_id, :integer
    add_column :entries, :location_id, :integer
    add_column :entries, :pog_id, :integer
    
    add_index :entries, [:user_id, :created_at]
    add_index :entries, [:pog_id, :created_at] 
  end
end

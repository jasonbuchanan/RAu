class AddForeignKeysToEntries < ActiveRecord::Migration
  def change
    add_index :entries, :location_id
    add_index :entries, :pog_id
    add_index :entries, :user_id
  end
end

class AddIndexToPogsSerialcode < ActiveRecord::Migration
  def change
      add_index :pogs, :serialcode, unique: true 
  end
end

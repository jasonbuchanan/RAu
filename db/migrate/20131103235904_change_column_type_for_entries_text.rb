class ChangeColumnTypeForEntriesText < ActiveRecord::Migration
  def change
      change_column :entries, :text, :text
  end
end

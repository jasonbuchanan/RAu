class CreatePogs < ActiveRecord::Migration
  def change
    create_table :pogs do |t|
      t.string :serialcode

      t.timestamps
    end
  end
end

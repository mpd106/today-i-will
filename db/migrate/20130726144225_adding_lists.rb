class AddingLists < ActiveRecord::Migration
  def up
    create_table :lists
  end

  def down
    drop_table :lists
  end
end

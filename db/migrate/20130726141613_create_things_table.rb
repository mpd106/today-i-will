class CreateThingsTable < ActiveRecord::Migration
  def up
    create_table :things
  end

  def down
    drop_table :things
  end
end

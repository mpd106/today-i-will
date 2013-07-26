class AddDoneToThing < ActiveRecord::Migration
  def change
    add_column :things, :done, :boolean
  end
end

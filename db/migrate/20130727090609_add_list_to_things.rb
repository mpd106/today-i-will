class AddListToThings < ActiveRecord::Migration
  def change
    add_column :things, :list_id, :integer
  end
end

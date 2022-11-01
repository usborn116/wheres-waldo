class AddIndexes < ActiveRecord::Migration[7.0]
  def change
    add_index :characters, :map_id
    add_index :scores, :map_id
  end
end

class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :characters, :maps
    add_foreign_key :scores, :maps
  end
end

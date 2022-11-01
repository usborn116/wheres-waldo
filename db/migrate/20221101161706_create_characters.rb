class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :slug
      t.integer :x_coord
      t.integer :y_coord
      t.integer :map_id, null:false
      
      t.timestamps
    end
  end
end

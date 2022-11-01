class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :slug
      t.string :name
      t.integer :difficulty

      t.timestamps
    end
  end
end

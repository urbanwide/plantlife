class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants, {:id => false} do |t|
      t.integer :height
      t.boolean :alive
      t.string :token
      t.string :name
      t.date :birthdate
      t.string :email

      t.timestamps
    end
  end
end

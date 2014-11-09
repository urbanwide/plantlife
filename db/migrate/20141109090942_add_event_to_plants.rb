class AddEventToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :event_id, :string
    rename_column :plants, :birthdate, :startdate
  end
end

class ChangePlantsStartdate < ActiveRecord::Migration
  def up
    change_column :plants, :startdate, :datetime
  end
  def down
    change_column :plants, :startdate, :date
  end
end

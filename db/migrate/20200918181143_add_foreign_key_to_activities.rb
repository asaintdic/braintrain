class AddForeignKeyToActivities < ActiveRecord::Migration[6.0]
  def change
    
    add_column :activities, :brainwave_id, :integer
  end
end

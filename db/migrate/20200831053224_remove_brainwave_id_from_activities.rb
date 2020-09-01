class RemoveBrainwaveIdFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :brainwave_id, :integer
  end
end

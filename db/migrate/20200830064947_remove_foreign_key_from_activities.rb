class RemoveForeignKeyFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :user_id, :integer
  end
end

class RemoveDescriptionFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :description, :string
  end
end

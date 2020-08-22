class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :duration
      t.string :category
      t.text :description
      t.integer :user_id
      t.integer :brainwave_id

      t.timestamps
    end
  end
end

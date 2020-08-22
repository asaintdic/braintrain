class CreateBrainwaves < ActiveRecord::Migration[6.0]
  def change
    create_table :brainwaves do |t|
      t.string :name
      t.string :frequency
      t.string :description

      t.timestamps
    end
  end
end

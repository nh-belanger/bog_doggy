class PlannedWalk < ActiveRecord::Migration[5.0]
  def change
    create_table :planned_walks do |t|
      t.string :time, null: false
      t.timestamps
    end
  end
end

class AddTeetimes < ActiveRecord::Migration[5.0]
  def change
    create_table :teetimes do |t|
      t.string :name, null: false
      t.string :time, null: false
      t.timestamps
    end
  end
end

class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name, presence: true
      t.string :breed

      t.belongs_to :user, null: false
    end
  end
end

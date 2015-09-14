class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :style
      t.datetime :occurs_at
      t.string :difficulty
      t.string :duration
      t.integer :instructor_id

      t.timestamps null: false
    end
  end
end

class Lessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :student
      t.timestamps
      t.date :scheduled_on
      t.integer :time_of_day
      t.boolean :cancelled
      t.boolean :late
      t.boolean :reschedule
      t.integer :room
      t.string :day
    end
  end
end

class Lessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :student
      t.references :user
      t.timestamps
      t.date :scheduled_on
      t.time :time_of_day
      t.boolean :cancelled
      t.boolean :late
      t.boolean :reschedule
      t.integer :room
      t.string :day
    end
  end
end

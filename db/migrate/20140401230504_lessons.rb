class Lessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.belongs_to :student
      t.belongs_to :user
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

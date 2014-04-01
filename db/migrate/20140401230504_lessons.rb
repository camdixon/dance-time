class Lessons < ActiveRecord::Migration
  def change
    def change
      create_table :lessons do |t|
        t.references :student
        t.timestamps
        t.date :attended_on
        t.integer :time_of_day
        t.boolean :cancelled
        t.boolean :late
        t.boolean :reschedule
    end
  end
end
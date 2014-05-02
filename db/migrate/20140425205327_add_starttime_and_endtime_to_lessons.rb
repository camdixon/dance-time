class AddStarttimeAndEndtimeToLessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.remove :scheduled_on
      t.remove :time_of_day
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end

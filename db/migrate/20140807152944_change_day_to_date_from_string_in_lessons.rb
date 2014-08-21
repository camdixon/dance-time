class ChangeDayToDateFromStringInLessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.remove :day
      t.date :day
    end
  end
end

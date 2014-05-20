class AddLessonsPurchasedToStudents < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.integer :lessons_purchased
      t.integer :lesson_price
    end
  end
end

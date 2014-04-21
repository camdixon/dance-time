class AddStudioIdToStudents < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.belongs_to :studio
    end
  end
end

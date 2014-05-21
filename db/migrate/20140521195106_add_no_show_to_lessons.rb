class AddNoShowToLessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.boolean :no_show
      t.boolean :charged
    end
  end
end

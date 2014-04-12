class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.timestamps
      t.string "name"
      t.string "street"
      t.string "city"
      t.string "state"
      t.integer :zip
      t.string "image_url"
      t.string "logo_url"
    end
  end
end

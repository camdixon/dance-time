class Students < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "cell_phone"
      t.string "home_phone"
      t.string "email"
      t.string "partner_first_name"
      t.string "partner_last_name"
      t.string "partner_cell_phone"
      t.string "partner_home_phone"
      t.string "partner_email"
      t.text :description
      t.string "image_url"
      t.boolean :active
      t.string "type"
    end
  end
end

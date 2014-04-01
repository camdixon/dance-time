class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "name"
      t.string "role"
      t.string "email"
      t.string "image_url"
      t.string "password_digest"
    end
  end
end

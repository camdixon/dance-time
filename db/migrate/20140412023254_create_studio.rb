class CreateStudio < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.timestamps
      t.string :name
      t.string :street_adress
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end

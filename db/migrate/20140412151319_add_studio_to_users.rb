class AddStudioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :studio_id, :integer
  end
end

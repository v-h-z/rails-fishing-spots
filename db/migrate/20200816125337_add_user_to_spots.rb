class AddUserToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :references, :User
  end
end

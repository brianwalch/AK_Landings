class AddUseridToPlanes < ActiveRecord::Migration
  def change
    add_column :planes, :user_id, :integer

  end
end

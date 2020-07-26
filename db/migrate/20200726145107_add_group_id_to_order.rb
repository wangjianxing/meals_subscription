class AddGroupIdToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :group_id, :integer
  end
end

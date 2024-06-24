class RemoveColumnItemIdFromCarrinhos < ActiveRecord::Migration[7.1]
  def change
    remove_column :carrinhos, :item_id, :integer
  end
end

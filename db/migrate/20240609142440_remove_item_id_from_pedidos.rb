class RemoveItemIdFromPedidos < ActiveRecord::Migration[7.1]
  def change
    remove_column :pedidos, :item_id, :integer
  end
end

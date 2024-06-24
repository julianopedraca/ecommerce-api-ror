class AddColumnItemIdToPedidos < ActiveRecord::Migration[7.1]
  def change
    add_column :pedidos, :item_id, :integer
  end
end

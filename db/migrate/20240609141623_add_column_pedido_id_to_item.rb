class AddColumnPedidoIdToItem < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :pedido_id, :integer
  end
end

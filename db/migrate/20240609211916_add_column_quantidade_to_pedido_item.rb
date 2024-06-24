class AddColumnQuantidadeToPedidoItem < ActiveRecord::Migration[7.1]
  def change
    add_column :pedido_items, :quantidade, :integer
  end
end

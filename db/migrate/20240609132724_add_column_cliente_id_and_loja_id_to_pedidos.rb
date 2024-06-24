class AddColumnClienteIdAndLojaIdToPedidos < ActiveRecord::Migration[7.1]
  def change
    add_column :pedidos, :cliente_id, :integer
    add_column :pedidos, :loja_id, :integer
  end
end

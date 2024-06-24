class AddForeignKeyToPedidos < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :pedidos, :clientes, column: :cliente_id
    add_foreign_key :pedidos, :lojas, column: :loja_id
  end
end

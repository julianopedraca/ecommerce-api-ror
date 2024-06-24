class AddForeignKeyToItems < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :items, :pedidos, column: :pedido_id
    add_foreign_key :items, :carrinhos, column: :carrinho_id
  end
end

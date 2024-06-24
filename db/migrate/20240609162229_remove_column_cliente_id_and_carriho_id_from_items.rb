class RemoveColumnClienteIdAndCarrihoIdFromItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :items, :carrinho_id, :integer
    remove_column :items, :pedido_id, :integer
  end
end

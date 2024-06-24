class AddColumnItemIdAndClienteIdToCarrinho < ActiveRecord::Migration[7.1]
  def change
    add_column :carrinhos, :cliente_id, :integer
    add_column :carrinhos, :item_id, :integer
  end
end

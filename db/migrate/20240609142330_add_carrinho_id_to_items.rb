class AddCarrinhoIdToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :carrinho_id, :integer
  end
end

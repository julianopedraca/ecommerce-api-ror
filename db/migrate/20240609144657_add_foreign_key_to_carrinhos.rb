class AddForeignKeyToCarrinhos < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :carrinhos, :clientes, column: :cliente_id
  end
end

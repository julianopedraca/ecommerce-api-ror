class CreatePedidoItems < ActiveRecord::Migration[7.1]
  def change
    create_table :pedido_items do |t|
      t.references :pedido, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end

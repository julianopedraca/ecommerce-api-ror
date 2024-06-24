class CreatePedidos < ActiveRecord::Migration[7.1]
  def change
    create_table :pedidos do |t|
      t.decimal :total
      t.string :status

      t.timestamps
    end
  end
end

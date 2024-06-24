class CreateCarrinhoItems < ActiveRecord::Migration[7.1]
  def change
    create_table :carrinho_items do |t|
      t.references :carrinho, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end

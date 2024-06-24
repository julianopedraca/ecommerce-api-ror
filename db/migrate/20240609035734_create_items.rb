class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco
      t.integer :quantidade_em_estoque

      t.timestamps
    end
  end
end

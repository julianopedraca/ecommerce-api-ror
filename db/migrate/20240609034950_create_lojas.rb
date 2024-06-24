class CreateLojas < ActiveRecord::Migration[7.1]
  def change
    create_table :lojas do |t|
      t.string :nome
      t.text :descricao
      t.string :endereco

      t.timestamps
    end
  end
end

class Item < ApplicationRecord
  has_many :carrinho_items, dependent: :destroy
  has_many :carrinhos, through: :carrinho_items
  has_many :pedido_items, dependent: :destroy
  has_many :pedidos, through: :pedido_items

  validates :nome, presence: true
  validates :descricao, presence: true
  validates :preco, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantidade_em_estoque, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def formatted_preco
    '%.2f' % preco
  end

end

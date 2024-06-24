class PedidoItem < ApplicationRecord
  belongs_to :pedido
  belongs_to :item

  validates :pedido, presence: true
  validates :item, presence: true
  validates :quantidade, presence: true, numericality: { only_integer: true, greater_than: 0 }
end

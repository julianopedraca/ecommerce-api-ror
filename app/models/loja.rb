class Loja < ApplicationRecord
  has_many :pedidos

  validates :nome, presence: true
  validates :descricao, presence: true
  validates :endereco, presence: true

end

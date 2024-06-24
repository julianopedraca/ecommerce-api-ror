class Carrinho < ApplicationRecord
  belongs_to :cliente
  has_many :carrinho_items, dependent: :destroy
  has_many :items, through: :carrinho_items
end

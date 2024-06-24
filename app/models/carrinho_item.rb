class CarrinhoItem < ApplicationRecord
  belongs_to :carrinho
  belongs_to :item

  validates :carrinho, presence: true
  validates :item, presence: true
end

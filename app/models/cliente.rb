class Cliente < ApplicationRecord
  has_one :carrinho, dependent: :destroy
  has_many :pedidos

  validates :nome, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :endereco, presence: true

end

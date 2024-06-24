class Pedido < ApplicationRecord
  belongs_to :cliente
  belongs_to :loja

  has_many :pedido_items, dependent: :destroy
  has_many :items, through: :pedido_items

  enum status: { pendente: 'pendente', em_separacao: 'em separacao', confirmado: 'confirmado', em_rota: 'em rota', disponivel_para_retirada: 'disponivel para retirada' }

  validates :status, presence: true
  validates :cliente, presence: true
  validates :loja, presence: true

  before_save :atualizar_total

  def em_separacao
    update(status: 'em_separacao') if pendente?
  end

  def confirmado
    update(status: 'confirmado') if em_separacao?
  end

  def em_rota
    update(status: 'em_rota') if confirmado?
  end

  def disponivel_para_retirada
    update(status: 'disponivel_para_retirada') if confirmado?
  end

  private

  def atualizar_total
    self.total = pedido_items.joins(:item).sum('items.preco * pedido_items.quantidade')
  end

end

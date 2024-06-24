require 'rails_helper'

RSpec.describe PedidoItem, type: :model do
  it "é válido com atributos válidos" do
    pedido = FactoryBot.create(:pedido)
    item = FactoryBot.create(:item)
    pedido_item = FactoryBot.build(:pedido_item, pedido: pedido, item: item, quantidade: 1)
    expect(pedido_item).to be_valid
  end

  it "não é válido sem um pedido" do
    item = FactoryBot.create(:item)
    pedido_item = FactoryBot.build(:pedido_item, pedido: nil, item: item, quantidade: 1)
    expect(pedido_item).not_to be_valid
  end

  it "não é válido sem um item" do
    pedido = FactoryBot.create(:pedido)
    pedido_item = FactoryBot.build(:pedido_item, pedido: pedido, item: nil, quantidade: 1)
    expect(pedido_item).not_to be_valid
  end

  it "não é válido sem uma quantidade" do
    pedido = FactoryBot.create(:pedido)
    item = FactoryBot.create(:item)
    pedido_item = FactoryBot.build(:pedido_item, pedido: pedido, item: item, quantidade: nil)
    expect(pedido_item).not_to be_valid
  end

  it "não é válido com uma quantidade não numérica" do
    pedido = FactoryBot.create(:pedido)
    item = FactoryBot.create(:item)
    pedido_item = FactoryBot.build(:pedido_item, pedido: pedido, item: item, quantidade: "abc")
    expect(pedido_item).not_to be_valid
  end

  it "não é válido com uma quantidade menor ou igual a zero" do
    pedido = FactoryBot.create(:pedido)
    item = FactoryBot.create(:item)
    pedido_item = FactoryBot.build(:pedido_item, pedido: pedido, item: item, quantidade: 0)
    expect(pedido_item).not_to be_valid
  end
end

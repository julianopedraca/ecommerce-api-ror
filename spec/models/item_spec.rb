require 'rails_helper'

RSpec.describe Item, type: :model do
  it "é válido com atributos válidos" do
    expect(FactoryBot.build(:item)).to be_valid
  end

  it "não é válido sem um nome" do
    expect(FactoryBot.build(:item, nome: nil)).not_to be_valid
  end

  it "não é válido sem uma descrição" do
    expect(FactoryBot.build(:item, descricao: nil)).not_to be_valid
  end

  it "não é válido sem um preço" do
    expect(FactoryBot.build(:item, preco: nil)).not_to be_valid
  end

  it "não é válido sem quantidade em estoque" do
    expect(FactoryBot.build(:item, quantidade_em_estoque: nil)).not_to be_valid
  end

  it "não é válido com um preço não numérico" do
    expect(FactoryBot.build(:item, preco: "abc")).not_to be_valid
  end

  it "não é válido com um preço negativo" do
    expect(FactoryBot.build(:item, preco: -1)).not_to be_valid
  end

  it "não é válido com quantidade em estoque não inteiro" do
    expect(FactoryBot.build(:item, quantidade_em_estoque: 1.5)).not_to be_valid
  end

  it "não é válido com quantidade em estoque negativa" do
    expect(FactoryBot.build(:item, quantidade_em_estoque: -1)).not_to be_valid
  end
end

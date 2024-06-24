require 'rails_helper'

RSpec.describe Loja, type: :model do
  it "é válido com atributos válidos" do
    expect(FactoryBot.build(:loja)).to be_valid
  end

  it "não é válido sem um nome" do
    expect(FactoryBot.build(:loja, nome: nil)).not_to be_valid
  end

  it "não é válido sem uma descrição" do
    expect(FactoryBot.build(:loja, descricao: nil)).not_to be_valid
  end

  it "não é válido sem um endereço" do
    expect(FactoryBot.build(:loja, endereco: nil)).not_to be_valid
  end
end

require 'rails_helper'

RSpec.describe Pedido, type: :model do
  it "é válido com atributos válidos" do
    expect(FactoryBot.build(:pedido)).to be_valid
  end

  it "não é válido sem um status" do
    expect(FactoryBot.build(:pedido, status: nil)).not_to be_valid
  end

  it "não é válido sem um cliente" do
    expect(FactoryBot.build(:pedido, cliente: nil)).not_to be_valid
  end

  it "não é válido sem uma loja" do
    expect(FactoryBot.build(:pedido, loja: nil)).not_to be_valid
  end
end

require 'rails_helper'

RSpec.describe Cliente, type: :model do
  it "é válido com atributos válidos" do
    expect(FactoryBot.build(:cliente)).to be_valid
  end

  it "não é válido sem um nome" do
    expect(FactoryBot.build(:cliente, nome: nil)).not_to be_valid
  end

  it "não é válido sem um email" do
    expect(FactoryBot.build(:cliente, email: nil)).not_to be_valid
  end

  it "não é válido sem um endereço" do
    expect(FactoryBot.build(:cliente, endereco: nil)).not_to be_valid
  end

  it "não é válido com um email duplicado" do
    FactoryBot.create(:cliente, email: "duplicado@example.com")
    expect(FactoryBot.build(:cliente, email: "duplicado@example.com")).not_to be_valid
  end
end

require 'rails_helper'

RSpec.describe CarrinhoItem, type: :model do
  it "é válido com atributos válidos" do
    expect(FactoryBot.build(:carrinho_item)).to be_valid
  end

  it "não é válido sem um carrinho" do
    expect(FactoryBot.build(:carrinho_item, carrinho: nil)).not_to be_valid
  end

  it "não é válido sem um item" do
    expect(FactoryBot.build(:carrinho_item, item: nil)).not_to be_valid
  end
end

require 'rails_helper'

RSpec.describe Carrinho, type: :model do
  it "é válido com atributos válidos" do
    expect(FactoryBot.build(:carrinho)).to be_valid
  end

  it "não é válido sem um cliente" do
    expect(FactoryBot.build(:carrinho, cliente: nil)).not_to be_valid
  end
end

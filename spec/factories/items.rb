FactoryBot.define do
  factory :item do
    nome { "Item #{Faker::Number.number(digits: 2)}" }
    descricao { Faker::Lorem.paragraph }
    preco { Faker::Commerce.price(range: 0.0..5000.0) }
    quantidade_em_estoque { Faker::Number.between(from: 1, to: 100) }
  end
end

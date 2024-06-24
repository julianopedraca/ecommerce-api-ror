FactoryBot.define do
  factory :pedido_item do
    association :pedido
    association :item
    quantidade { Faker::Number.between(from: 1, to: 10) }
  end
end

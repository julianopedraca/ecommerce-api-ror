FactoryBot.define do
  factory :carrinho_item do
    association :carrinho
    association :item
  end
end

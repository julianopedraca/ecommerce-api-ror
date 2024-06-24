FactoryBot.define do
  factory :pedido do
    status { Pedido.statuses.keys.sample }
    total {0}
    association :cliente
    association :loja
  end
end

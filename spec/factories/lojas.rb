FactoryBot.define do
  factory :loja do
    nome { Faker::Company.name }
    descricao { Faker::Lorem.paragraph }
    endereco { Faker::Address.full_address }
  end
end

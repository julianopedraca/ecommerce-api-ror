FactoryBot.define do
  factory :cliente do
    nome { Faker::Name.name }
    email { Faker::Internet.unique.email }
    endereco { Faker::Address.full_address }
  end
end

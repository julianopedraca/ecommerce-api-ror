# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


5.times do
  Loja.create(
    nome: Faker::Commerce.department,
    descricao: Faker::Lorem.paragraph(sentence_count: 3),
    endereco: Faker::Address.full_address
  )
end

10.times do
  Cliente.create(
    nome: Faker::Name.name,
    email: Faker::Internet.unique.email,
    endereco: Faker::Address.full_address
  )
end

50.times do
  Item.create(
    nome: Faker::Commerce.product_name,
    descricao: Faker::Lorem.paragraph(sentence_count: 2),
    preco: Faker::Commerce.price(range: 0.0..5000.0),
    quantidade_em_estoque: Faker::Number.between(from: 1, to: 100)
  )
end

10.times do
  cliente = Cliente.order('RANDOM()').first
  loja = Loja.order('RANDOM()').first
  pedido = Pedido.create(
    status: Pedido.statuses.keys.sample,
    cliente: cliente,
    loja: loja
  )

  5.times do
    item = Item.order('RANDOM()').first
    quantidade = Faker::Number.between(from: 1, to: 10)

    PedidoItem.create(
      pedido: pedido,
      item: item,
      quantidade: quantidade
    )
  end

  pedido.reload
  pedido.save
end

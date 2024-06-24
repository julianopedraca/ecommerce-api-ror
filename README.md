<p style="display:flex;justify-content:center;align-items:center;" align="center">
  <a href="https://rubyonrails.org/" target="blank"><img src="https://rubyonrails.org/assets/images/logo.svg" style="filter: brightness(0) invert(1);" width="100" alt="Ruby Logo"/></a>
  <span style="font-weight:900; font-size:30px;margin:0 10px;color:white">+</span>
  <a href="https://www.docker.com/" target="blank">
  <img style="background-color:none;" src="https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Docker_logo.svg/1920px-Docker_logo.svg.png" width="100" alt="docker Logo"/></a>
    <span style="font-weight:900; font-size:30px;margin:0 10px;color:white">+</span>
  <a href="https://www.postgresql.org/" target="blank">
  <img style="background-color:none;" src="https://upload.wikimedia.org/wikipedia/commons/2/29/Postgresql_elephant.svg" width="100" alt="postgresql Logo"/></a>

</p>

# Rails, Docker e Postgresql
## Visão Geral
Aplicação backend que gerencia o fluxo de pedidos de um sistema e-commerce utilizando ruby on rails, docker e postgres, focando na manipulação de dados via console do Rails.

## Características
- **CRUD:** A Aplicação apresenta um CRUD de Loja, Cliente, Pedido, Item e Carrinho, podedendo ser feito também a alteração do status do pedido.

## Prerequisites
- **Docker 26.1.3:** Tenha certeza de ter em sua máquina o docker versão 26.1.3 website: https://www.docker.com/
- **Docker Compose 2.27.1:** Tenha certeza de ter em sua máquina o docker compose 2.27.1 website: https://docs.docker.com/compose/install/

## Instalação
Clone esse repositório:

```Bash
git clone https://github.com/julianopedraca/juliano_pedraca_cresce_cuts_ror_junior_junho_2024
```
Navegue até o diretório do projeto:
```Bash
cd ecommerce
```
Inicie o projeto usando o docker compose up:

```Bash
docker-compose up
```

*Esse comando já deve pre-configurar o projeto e instalar suas dependencias.*

Inicie o banco de dados utilizando o seguinte comando

```Bash
docker exec -it ecommerce-rails-1 db:create
```

Faça a **migração** utilizando
```Bash
docker exec -it ecommerce-rails-1 db:migrate
```

**Popule** o banco de dados utilizando a seed
```Bash
docker exec -it ecommerce-rails-1 db:seed   
```

Para utilizar o console do rails use o seguinte comando:
```Bash
docker exec -it ecommerce-rails-1 rails console   
```

## Rails Console
**CRUD Loja:**
```rb
#create
loja = Loja.create(nome: "Loja A", descricao: "Uma descrição da Loja A", endereco: "Endereço da Loja A")
#read
Lojas.all
Loja.find_by(nome: "Loja A")
#update
loja.update(nome: "Loja A Updated", descricao: "Descrição Atualizada da Loja A")
#delete
loja.destroy
```

**CRUD Cliente:**
```rb
#create
cliente = Cliente.create(nome: "Cliente A", email: "clientea@example.com", endereco: "Endereço do Cliente A")
#read
Cliente.all
Cliente.find_by(email: "clientea@example.com")
#update
loja.update(nome: "Loja A Updated", descricao: "Descrição Atualizada da Loja A")
#delete
cliente.destroy
```

**CRUD Item:**
```rb
#create
item1 = Item.create(nome: "Item 1", descricao: "Descrição do Item 1", preco: 100.0, quantidade_em_estoque: 10)
item2 = Item.create(nome: "Item 2", descricao: "Descrição do Item 2", preco: 200.0, quantidade_em_estoque: 20)
#read
Item.all
Item.find_by(nome: "Item 1")
#update
item1.update(nome: "Item 1 Update", descricao: "Descrição do Item 1 Update", preco: 100.0, quantidade_em_estoque: 20)
#delete
item1.destroy
```

**CRUD Carrinho:**
```rb
#create
carrinho = Carrinho.create(cliente: cliente)
#read
Carrinho.all
Carrinho.find_by(cliente: 1)
#update
carrinho.update(cliente: cliente2)
#delete
carrinho.destroy
```

**CRUD CarrinhoItem:**
```rb
#create
carrinhoItem = CarrinhoItem.create(carrinho: carrinho, item: item1)
CarrinhoItem.create(carrinho: carrinho, item: item2)
#read
CarrinhoItem.all
CarrinhoItem.find_by(id: 1)
#update
# item3 = Item.create(nome: "Item 3", descricao: "Descrição do Item 3", preco: 300.0, quantidade_em_estoque: 30)
carrinhoItem.update(carrinho: carrinho, item: item3)
#delete
carrinhoItem.destroy
```

**CRUD PedidoItem:**
```rb
#create
pedidoItem = PedidoItem.create(pedido: pedido, item: item1)
PedidoItem.create(pedido: pedido, item: item2)
#read
CarrinhoItem.all
PedidoItem.find_by(id: 1)
#update
# item3 = Item.create(nome: "Item 3", descricao: "Descrição do Item 3", preco: 300.0, quantidade_em_estoque: 30)
pedidoItem.update(pedido: pedido, item: item3)
#delete
pedidoItem.destroy
```

**Atualizar status do pedido**
```rb
pedido = Pedido.find(1)

# Atualiza status para em separação
pedido.em_separacao

# Atualiza status para confirmado
pedido.confirmado

# Atualiza status para em_rota
pedido.em_rota

# Atualiza status para disponivel_para_retirada
pedido.disponivel_para_retirada
```

## Testes

Executar os testes:
```bash
docker exec -it ecommerce-rails-1 rails spec
```

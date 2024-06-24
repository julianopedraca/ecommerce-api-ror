# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_09_211916) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carrinho_items", force: :cascade do |t|
    t.bigint "carrinho_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrinho_id"], name: "index_carrinho_items_on_carrinho_id"
    t.index ["item_id"], name: "index_carrinho_items_on_item_id"
  end

  create_table "carrinhos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.decimal "preco"
    t.integer "quantidade_em_estoque"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lojas", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedido_items", force: :cascade do |t|
    t.bigint "pedido_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantidade"
    t.index ["item_id"], name: "index_pedido_items_on_item_id"
    t.index ["pedido_id"], name: "index_pedido_items_on_pedido_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.decimal "total"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.integer "loja_id"
  end

  add_foreign_key "carrinho_items", "carrinhos"
  add_foreign_key "carrinho_items", "items"
  add_foreign_key "carrinhos", "clientes"
  add_foreign_key "pedido_items", "items"
  add_foreign_key "pedido_items", "pedidos"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "pedidos", "lojas"
end

require "test_helper"

class LojasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loja = lojas(:one)
  end

  test "should get index" do
    get lojas_url, as: :json
    assert_response :success
  end

  test "should create loja" do
    assert_difference("Loja.count") do
      post lojas_url, params: { loja: { descricao: @loja.descricao, endereco: @loja.endereco, nome: @loja.nome } }, as: :json
    end

    assert_response :created
  end

  test "should show loja" do
    get loja_url(@loja), as: :json
    assert_response :success
  end

  test "should update loja" do
    patch loja_url(@loja), params: { loja: { descricao: @loja.descricao, endereco: @loja.endereco, nome: @loja.nome } }, as: :json
    assert_response :success
  end

  test "should destroy loja" do
    assert_difference("Loja.count", -1) do
      delete loja_url(@loja), as: :json
    end

    assert_response :no_content
  end
end

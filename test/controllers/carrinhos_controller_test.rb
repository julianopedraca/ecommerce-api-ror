require "test_helper"

class CarrinhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrinho = carrinhos(:one)
  end

  test "should get index" do
    get carrinhos_url, as: :json
    assert_response :success
  end

  test "should create carrinho" do
    assert_difference("Carrinho.count") do
      post carrinhos_url, params: { carrinho: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show carrinho" do
    get carrinho_url(@carrinho), as: :json
    assert_response :success
  end

  test "should update carrinho" do
    patch carrinho_url(@carrinho), params: { carrinho: {  } }, as: :json
    assert_response :success
  end

  test "should destroy carrinho" do
    assert_difference("Carrinho.count", -1) do
      delete carrinho_url(@carrinho), as: :json
    end

    assert_response :no_content
  end
end

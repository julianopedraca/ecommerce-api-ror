class CarrinhosController < ApplicationController
  before_action :set_carrinho, only: %i[ show update destroy ]

  # GET /carrinhos
  def index
    @carrinhos = Carrinho.all

    render json: @carrinhos
  end

  # GET /carrinhos/1
  def show
    render json: @carrinho
  end

  # POST /carrinhos
  def create
    @carrinho = Carrinho.new(carrinho_params)

    if @carrinho.save
      render json: @carrinho, status: :created, location: @carrinho
    else
      render json: @carrinho.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carrinhos/1
  def update
    if @carrinho.update(carrinho_params)
      render json: @carrinho
    else
      render json: @carrinho.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carrinhos/1
  def destroy
    @carrinho.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrinho
      @carrinho = Carrinho.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrinho_params
      params.fetch(:carrinho, {})
    end
end

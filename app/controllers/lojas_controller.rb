class LojasController < ApplicationController
  before_action :set_loja, only: %i[ show update destroy ]

  # GET /lojas
  def index
    @lojas = Loja.all

    render json: @lojas
  end

  # GET /lojas/1
  def show
    render json: @loja
  end

  # POST /lojas
  def create
    @loja = Loja.new(loja_params)

    if @loja.save
      render json: @loja, status: :created, location: @loja
    else
      render json: @loja.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lojas/1
  def update
    if @loja.update(loja_params)
      render json: @loja
    else
      render json: @loja.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lojas/1
  def destroy
    @loja.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loja
      @loja = Loja.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loja_params
      params.require(:loja).permit(:nome, :descricao, :endereco)
    end
end

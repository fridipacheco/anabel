class BodegaPedidosController < ApplicationController
  before_action :set_bodega_pedido, only: [:show, :edit, :update, :destroy]

  # GET /bodega_pedidos
  # GET /bodega_pedidos.json
  def index
    @bodega_pedidos = BodegaPedido.all
  end

  # GET /bodega_pedidos/1
  # GET /bodega_pedidos/1.json
  def show
  end

  # GET /bodega_pedidos/new
  def new
    @bodega_pedido = BodegaPedido.new
  end

  # GET /bodega_pedidos/1/edit
  def edit
  end

  # POST /bodega_pedidos
  # POST /bodega_pedidos.json
  def create
    @bodega_pedido = BodegaPedido.new(bodega_pedido_params)

    respond_to do |format|
      if @bodega_pedido.save
        format.html { redirect_to @bodega_pedido, notice: 'Bodega pedido was successfully created.' }
        format.json { render :show, status: :created, location: @bodega_pedido }
      else
        format.html { render :new }
        format.json { render json: @bodega_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodega_pedidos/1
  # PATCH/PUT /bodega_pedidos/1.json
  def update
    respond_to do |format|
      if @bodega_pedido.update(bodega_pedido_params)
        format.html { redirect_to @bodega_pedido, notice: 'Bodega pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @bodega_pedido }
      else
        format.html { render :edit }
        format.json { render json: @bodega_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodega_pedidos/1
  # DELETE /bodega_pedidos/1.json
  def destroy
    @bodega_pedido.destroy
    respond_to do |format|
      format.html { redirect_to bodega_pedidos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodega_pedido
      @bodega_pedido = BodegaPedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodega_pedido_params
      params.require(:bodega_pedido).permit(:bodega_id, :pedido_id, :estado_id)
    end
end

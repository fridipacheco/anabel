class LocalPedidosController < ApplicationController
  before_action :set_local_pedido, only: [:show, :edit, :update, :destroy]

  # GET /local_pedidos
  # GET /local_pedidos.json
  def index
    @local_pedidos = LocalPedido.all
  end

  # GET /local_pedidos/1
  # GET /local_pedidos/1.json
  def show
  end

  # GET /local_pedidos/new
  def new
    @local_pedido = LocalPedido.new
  end

  # GET /local_pedidos/1/edit
  def edit
  end

  # POST /local_pedidos
  # POST /local_pedidos.json
  def create
    @local_pedido = LocalPedido.new(local_pedido_params)

    respond_to do |format|
      if @local_pedido.save
        format.html { redirect_to @local_pedido, notice: 'Local pedido was successfully created.' }
        format.json { render :show, status: :created, location: @local_pedido }
      else
        format.html { render :new }
        format.json { render json: @local_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_pedidos/1
  # PATCH/PUT /local_pedidos/1.json
  def update
    respond_to do |format|
      if @local_pedido.update(local_pedido_params)
        format.html { redirect_to @local_pedido, notice: 'Local pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_pedido }
      else
        format.html { render :edit }
        format.json { render json: @local_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_pedidos/1
  # DELETE /local_pedidos/1.json
  def destroy
    @local_pedido.destroy
    respond_to do |format|
      format.html { redirect_to local_pedidos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_pedido
      @local_pedido = LocalPedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_pedido_params
      params.require(:local_pedido).permit(:local_id, :pedido_id, :estado_id)
    end
end

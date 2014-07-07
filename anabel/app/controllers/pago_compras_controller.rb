class PagoComprasController < ApplicationController
  before_action :set_pago_compra, only: [:show, :edit, :update, :destroy]

  # GET /pago_compras
  # GET /pago_compras.json
  def index
    @pago_compras = PagoCompra.all
  end

  # GET /pago_compras/1
  # GET /pago_compras/1.json
  def show
  end

  # GET /pago_compras/new
  def new
    @pago_compra = PagoCompra.new
  end

  # GET /pago_compras/1/edit
  def edit
  end

  # POST /pago_compras
  # POST /pago_compras.json
  def create
    @pago_compra = PagoCompra.new(pago_compra_params)

    respond_to do |format|
      if @pago_compra.save
        format.html { redirect_to @pago_compra, notice: 'Pago compra was successfully created.' }
        format.json { render :show, status: :created, location: @pago_compra }
      else
        format.html { render :new }
        format.json { render json: @pago_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pago_compras/1
  # PATCH/PUT /pago_compras/1.json
  def update
    respond_to do |format|
      if @pago_compra.update(pago_compra_params)
        format.html { redirect_to @pago_compra, notice: 'Pago compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @pago_compra }
      else
        format.html { render :edit }
        format.json { render json: @pago_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pago_compras/1
  # DELETE /pago_compras/1.json
  def destroy
    @pago_compra.destroy
    respond_to do |format|
      format.html { redirect_to pago_compras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago_compra
      @pago_compra = PagoCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pago_compra_params
      params.require(:pago_compra).permit(:pag_cuota, :pag_fecha, :pag_venc, :pag_estado, :pag_monto, :tarjet_id, :compra_id)
    end
end

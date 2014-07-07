class TipoComprasController < ApplicationController
  before_action :set_tipo_compra, only: [:show, :edit, :update, :destroy]

  # GET /tipo_compras
  # GET /tipo_compras.json
  def index
    @tipo_compras = TipoCompra.all
  end

  # GET /tipo_compras/1
  # GET /tipo_compras/1.json
  def show
  end

  # GET /tipo_compras/new
  def new
    @tipo_compra = TipoCompra.new
  end

  # GET /tipo_compras/1/edit
  def edit
  end

  # POST /tipo_compras
  # POST /tipo_compras.json
  def create
    @tipo_compra = TipoCompra.new(tipo_compra_params)

    respond_to do |format|
      if @tipo_compra.save
        format.html { redirect_to @tipo_compra, notice: 'Tipo compra was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_compra }
      else
        format.html { render :new }
        format.json { render json: @tipo_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_compras/1
  # PATCH/PUT /tipo_compras/1.json
  def update
    respond_to do |format|
      if @tipo_compra.update(tipo_compra_params)
        format.html { redirect_to @tipo_compra, notice: 'Tipo compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_compra }
      else
        format.html { render :edit }
        format.json { render json: @tipo_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_compras/1
  # DELETE /tipo_compras/1.json
  def destroy
    @tipo_compra.destroy
    respond_to do |format|
      format.html { redirect_to tipo_compras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_compra
      @tipo_compra = TipoCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_compra_params
      params.require(:tipo_compra).permit(:tco_descripcion)
    end
end

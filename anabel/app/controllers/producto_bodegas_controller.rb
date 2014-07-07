class ProductoBodegasController < ApplicationController
  before_action :set_producto_bodega, only: [:show, :edit, :update, :destroy]

  # GET /producto_bodegas
  # GET /producto_bodegas.json
  def index
    @producto_bodegas = ProductoBodega.all
  end

  # GET /producto_bodegas/1
  # GET /producto_bodegas/1.json
  def show
  end

  # GET /producto_bodegas/new
  def new
    @producto_bodega = ProductoBodega.new
  end

  # GET /producto_bodegas/1/edit
  def edit
  end

  # POST /producto_bodegas
  # POST /producto_bodegas.json
  def create
    @producto_bodega = ProductoBodega.new(producto_bodega_params)

    respond_to do |format|
      if @producto_bodega.save
        format.html { redirect_to @producto_bodega, notice: 'Producto bodega was successfully created.' }
        format.json { render :show, status: :created, location: @producto_bodega }
      else
        format.html { render :new }
        format.json { render json: @producto_bodega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_bodegas/1
  # PATCH/PUT /producto_bodegas/1.json
  def update
    respond_to do |format|
      if @producto_bodega.update(producto_bodega_params)
        format.html { redirect_to @producto_bodega, notice: 'Producto bodega was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_bodega }
      else
        format.html { render :edit }
        format.json { render json: @producto_bodega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_bodegas/1
  # DELETE /producto_bodegas/1.json
  def destroy
    @producto_bodega.destroy
    respond_to do |format|
      format.html { redirect_to producto_bodegas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_bodega
      @producto_bodega = ProductoBodega.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_bodega_params
      params.require(:producto_bodega).permit(:prb_cant, :prb_fecha, :prb_preciouni, :producto_id, :bodega_id)
    end
end

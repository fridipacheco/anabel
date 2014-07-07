class ProductoSeccionsController < ApplicationController
  before_action :set_producto_seccion, only: [:show, :edit, :update, :destroy]

  # GET /producto_seccions
  # GET /producto_seccions.json
  def index
    @producto_seccions = ProductoSeccion.all
  end

  # GET /producto_seccions/1
  # GET /producto_seccions/1.json
  def show
  end

  # GET /producto_seccions/new
  def new
    @producto_seccion = ProductoSeccion.new
  end

  # GET /producto_seccions/1/edit
  def edit
  end

  # POST /producto_seccions
  # POST /producto_seccions.json
  def create
    @producto_seccion = ProductoSeccion.new(producto_seccion_params)

    respond_to do |format|
      if @producto_seccion.save
        format.html { redirect_to @producto_seccion, notice: 'Producto seccion was successfully created.' }
        format.json { render :show, status: :created, location: @producto_seccion }
      else
        format.html { render :new }
        format.json { render json: @producto_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_seccions/1
  # PATCH/PUT /producto_seccions/1.json
  def update
    respond_to do |format|
      if @producto_seccion.update(producto_seccion_params)
        format.html { redirect_to @producto_seccion, notice: 'Producto seccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_seccion }
      else
        format.html { render :edit }
        format.json { render json: @producto_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_seccions/1
  # DELETE /producto_seccions/1.json
  def destroy
    @producto_seccion.destroy
    respond_to do |format|
      format.html { redirect_to producto_seccions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_seccion
      @producto_seccion = ProductoSeccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_seccion_params
      params.require(:producto_seccion).permit(:prs_cant, :prs_fecha, :prs_preciouni, :producto_bodega_id, :seccion_local_id)
    end
end

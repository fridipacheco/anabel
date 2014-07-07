class AsistenciaComprasController < ApplicationController
  before_action :set_asistencia_compra, only: [:show, :edit, :update, :destroy]

  # GET /asistencia_compras
  # GET /asistencia_compras.json
  def index
    @asistencia_compras = AsistenciaCompra.all
  end

  # GET /asistencia_compras/1
  # GET /asistencia_compras/1.json
  def show
  end

  # GET /asistencia_compras/new
  def new
    @asistencia_compra = AsistenciaCompra.new
  end

  # GET /asistencia_compras/1/edit
  def edit
  end

  # POST /asistencia_compras
  # POST /asistencia_compras.json
  def create
    @asistencia_compra = AsistenciaCompra.new(asistencia_compra_params)

    respond_to do |format|
      if @asistencia_compra.save
        format.html { redirect_to @asistencia_compra, notice: 'Asistencia compra was successfully created.' }
        format.json { render :show, status: :created, location: @asistencia_compra }
      else
        format.html { render :new }
        format.json { render json: @asistencia_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistencia_compras/1
  # PATCH/PUT /asistencia_compras/1.json
  def update
    respond_to do |format|
      if @asistencia_compra.update(asistencia_compra_params)
        format.html { redirect_to @asistencia_compra, notice: 'Asistencia compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @asistencia_compra }
      else
        format.html { render :edit }
        format.json { render json: @asistencia_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia_compras/1
  # DELETE /asistencia_compras/1.json
  def destroy
    @asistencia_compra.destroy
    respond_to do |format|
      format.html { redirect_to asistencia_compras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistencia_compra
      @asistencia_compra = AsistenciaCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asistencia_compra_params
      params.require(:asistencia_compra).permit(:asc_fecha, :asc_comision, :trabajador_seccion_id, :compra_id)
    end
end

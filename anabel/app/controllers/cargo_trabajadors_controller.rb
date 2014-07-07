class CargoTrabajadorsController < ApplicationController
  before_action :set_cargo_trabajador, only: [:show, :edit, :update, :destroy]

  # GET /cargo_trabajadors
  # GET /cargo_trabajadors.json
  def index
    @cargo_trabajadors = CargoTrabajador.all
  end

  # GET /cargo_trabajadors/1
  # GET /cargo_trabajadors/1.json
  def show
  end

  # GET /cargo_trabajadors/new
  def new
    @cargo_trabajador = CargoTrabajador.new
  end

  # GET /cargo_trabajadors/1/edit
  def edit
  end

  # POST /cargo_trabajadors
  # POST /cargo_trabajadors.json
  def create
    @cargo_trabajador = CargoTrabajador.new(cargo_trabajador_params)

    respond_to do |format|
      if @cargo_trabajador.save
        format.html { redirect_to @cargo_trabajador, notice: 'Cargo trabajador was successfully created.' }
        format.json { render :show, status: :created, location: @cargo_trabajador }
      else
        format.html { render :new }
        format.json { render json: @cargo_trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cargo_trabajadors/1
  # PATCH/PUT /cargo_trabajadors/1.json
  def update
    respond_to do |format|
      if @cargo_trabajador.update(cargo_trabajador_params)
        format.html { redirect_to @cargo_trabajador, notice: 'Cargo trabajador was successfully updated.' }
        format.json { render :show, status: :ok, location: @cargo_trabajador }
      else
        format.html { render :edit }
        format.json { render json: @cargo_trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargo_trabajadors/1
  # DELETE /cargo_trabajadors/1.json
  def destroy
    @cargo_trabajador.destroy
    respond_to do |format|
      format.html { redirect_to cargo_trabajadors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cargo_trabajador
      @cargo_trabajador = CargoTrabajador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cargo_trabajador_params
      params.require(:cargo_trabajador).permit(:cat_alta, :cat_baja, :cat_permiso, :cat_base, :cat_porcentaje, :trabajador_id, :estado_habilitado_id, :tipo_trabajador_id)
    end
end

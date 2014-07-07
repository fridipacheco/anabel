class TrabajadorSeccionsController < ApplicationController
  before_action :set_trabajador_seccion, only: [:show, :edit, :update, :destroy]

  # GET /trabajador_seccions
  # GET /trabajador_seccions.json
  def index
    @trabajador_seccions = TrabajadorSeccion.all
  end

  # GET /trabajador_seccions/1
  # GET /trabajador_seccions/1.json
  def show
  end

  # GET /trabajador_seccions/new
  def new
    @trabajador_seccion = TrabajadorSeccion.new
  end

  # GET /trabajador_seccions/1/edit
  def edit
  end

  # POST /trabajador_seccions
  # POST /trabajador_seccions.json
  def create
    @trabajador_seccion = TrabajadorSeccion.new(trabajador_seccion_params)

    respond_to do |format|
      if @trabajador_seccion.save
        format.html { redirect_to @trabajador_seccion, notice: 'Trabajador seccion was successfully created.' }
        format.json { render :show, status: :created, location: @trabajador_seccion }
      else
        format.html { render :new }
        format.json { render json: @trabajador_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajador_seccions/1
  # PATCH/PUT /trabajador_seccions/1.json
  def update
    respond_to do |format|
      if @trabajador_seccion.update(trabajador_seccion_params)
        format.html { redirect_to @trabajador_seccion, notice: 'Trabajador seccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabajador_seccion }
      else
        format.html { render :edit }
        format.json { render json: @trabajador_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajador_seccions/1
  # DELETE /trabajador_seccions/1.json
  def destroy
    @trabajador_seccion.destroy
    respond_to do |format|
      format.html { redirect_to trabajador_seccions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajador_seccion
      @trabajador_seccion = TrabajadorSeccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabajador_seccion_params
      params.require(:trabajador_seccion).permit(:trs_fechaini, :trs_fechafin, :seccion_local_id, :trabajador_id, :turno_id)
    end
end

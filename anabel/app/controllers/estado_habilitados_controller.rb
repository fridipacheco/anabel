class EstadoHabilitadosController < ApplicationController
  before_action :set_estado_habilitado, only: [:show, :edit, :update, :destroy]

  # GET /estado_habilitados
  # GET /estado_habilitados.json
  def index
    @estado_habilitados = EstadoHabilitado.all
  end

  # GET /estado_habilitados/1
  # GET /estado_habilitados/1.json
  def show
  end

  # GET /estado_habilitados/new
  def new
    @estado_habilitado = EstadoHabilitado.new
  end

  # GET /estado_habilitados/1/edit
  def edit
  end

  # POST /estado_habilitados
  # POST /estado_habilitados.json
  def create
    @estado_habilitado = EstadoHabilitado.new(estado_habilitado_params)

    respond_to do |format|
      if @estado_habilitado.save
        format.html { redirect_to @estado_habilitado, notice: 'Estado habilitado was successfully created.' }
        format.json { render :show, status: :created, location: @estado_habilitado }
      else
        format.html { render :new }
        format.json { render json: @estado_habilitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_habilitados/1
  # PATCH/PUT /estado_habilitados/1.json
  def update
    respond_to do |format|
      if @estado_habilitado.update(estado_habilitado_params)
        format.html { redirect_to @estado_habilitado, notice: 'Estado habilitado was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_habilitado }
      else
        format.html { render :edit }
        format.json { render json: @estado_habilitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_habilitados/1
  # DELETE /estado_habilitados/1.json
  def destroy
    @estado_habilitado.destroy
    respond_to do |format|
      format.html { redirect_to estado_habilitados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_habilitado
      @estado_habilitado = EstadoHabilitado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_habilitado_params
      params.require(:estado_habilitado).permit(:esh_descripcion)
    end
end

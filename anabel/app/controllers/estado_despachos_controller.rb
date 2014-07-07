class EstadoDespachosController < ApplicationController
  before_action :set_estado_despacho, only: [:show, :edit, :update, :destroy]

  # GET /estado_despachos
  # GET /estado_despachos.json
  def index
    @estado_despachos = EstadoDespacho.all
  end

  # GET /estado_despachos/1
  # GET /estado_despachos/1.json
  def show
  end

  # GET /estado_despachos/new
  def new
    @estado_despacho = EstadoDespacho.new
  end

  # GET /estado_despachos/1/edit
  def edit
  end

  # POST /estado_despachos
  # POST /estado_despachos.json
  def create
    @estado_despacho = EstadoDespacho.new(estado_despacho_params)

    respond_to do |format|
      if @estado_despacho.save
        format.html { redirect_to @estado_despacho, notice: 'Estado despacho was successfully created.' }
        format.json { render :show, status: :created, location: @estado_despacho }
      else
        format.html { render :new }
        format.json { render json: @estado_despacho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_despachos/1
  # PATCH/PUT /estado_despachos/1.json
  def update
    respond_to do |format|
      if @estado_despacho.update(estado_despacho_params)
        format.html { redirect_to @estado_despacho, notice: 'Estado despacho was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_despacho }
      else
        format.html { render :edit }
        format.json { render json: @estado_despacho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_despachos/1
  # DELETE /estado_despachos/1.json
  def destroy
    @estado_despacho.destroy
    respond_to do |format|
      format.html { redirect_to estado_despachos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_despacho
      @estado_despacho = EstadoDespacho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_despacho_params
      params.require(:estado_despacho).permit(:ede_descripcion)
    end
end

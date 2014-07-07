class TipoTarjetsController < ApplicationController
  before_action :set_tipo_tarjet, only: [:show, :edit, :update, :destroy]

  # GET /tipo_tarjets
  # GET /tipo_tarjets.json
  def index
    @tipo_tarjets = TipoTarjet.all
  end

  # GET /tipo_tarjets/1
  # GET /tipo_tarjets/1.json
  def show
  end

  # GET /tipo_tarjets/new
  def new
    @tipo_tarjet = TipoTarjet.new
  end

  # GET /tipo_tarjets/1/edit
  def edit
  end

  # POST /tipo_tarjets
  # POST /tipo_tarjets.json
  def create
    @tipo_tarjet = TipoTarjet.new(tipo_tarjet_params)

    respond_to do |format|
      if @tipo_tarjet.save
        format.html { redirect_to @tipo_tarjet, notice: 'Tipo tarjet was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_tarjet }
      else
        format.html { render :new }
        format.json { render json: @tipo_tarjet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_tarjets/1
  # PATCH/PUT /tipo_tarjets/1.json
  def update
    respond_to do |format|
      if @tipo_tarjet.update(tipo_tarjet_params)
        format.html { redirect_to @tipo_tarjet, notice: 'Tipo tarjet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_tarjet }
      else
        format.html { render :edit }
        format.json { render json: @tipo_tarjet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_tarjets/1
  # DELETE /tipo_tarjets/1.json
  def destroy
    @tipo_tarjet.destroy
    respond_to do |format|
      format.html { redirect_to tipo_tarjets_url, notice: 'Tipo tarjet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_tarjet
      @tipo_tarjet = TipoTarjet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_tarjet_params
      params.require(:tipo_tarjet).permit(:tta_descripcion)
    end
end

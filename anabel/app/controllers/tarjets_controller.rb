class TarjetsController < ApplicationController
  before_action :set_tarjet, only: [:show, :edit, :update, :destroy]

  # GET /tarjets
  # GET /tarjets.json
  def index
    @tarjets = Tarjet.all
    @auditorias = Auditoria.order('aud_fecha DESC').all
  end

  # GET /tarjets/1
  # GET /tarjets/1.json
  def show
  end

  # GET /tarjets/new
  def new
    @tarjet = Tarjet.new
  end

  # GET /tarjets/1/edit
  def edit
  end

  # POST /tarjets
  # POST /tarjets.json
  def create
    @tarjet = Tarjet.new(tarjet_params)

    respond_to do |format|
      if @tarjet.save
        format.html { redirect_to @tarjet, notice: 'Tarjet was successfully created.' }
        format.json { render :show, status: :created, location: @tarjet }
      else
        format.html { render :new }
        format.json { render json: @tarjet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarjets/1
  # PATCH/PUT /tarjets/1.json
  def update
    respond_to do |format|
      if @tarjet.update(tarjet_params)
        format.html { redirect_to @tarjet, notice: 'Tarjet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarjet }
      else
        format.html { render :edit }
        format.json { render json: @tarjet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarjets/1
  # DELETE /tarjets/1.json
  def destroy
    @tarjet.destroy
    respond_to do |format|
      format.html { redirect_to tarjets_url, notice: 'Tarjet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarjet
      @tarjet = Tarjet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarjet_params
      params.require(:tarjet).permit(:tar_serie, :tar_verificador, :tar_expira, :tar_estado, :tar_cobro, :cliente_id, :tipo_tarjet_id)
    end
end

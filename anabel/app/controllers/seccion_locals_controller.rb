class SeccionLocalsController < ApplicationController
  before_action :set_seccion_local, only: [:show, :edit, :update, :destroy]

  # GET /seccion_locals
  # GET /seccion_locals.json
  def index
    @seccion_locals = SeccionLocal.all
  end

  # GET /seccion_locals/1
  # GET /seccion_locals/1.json
  def show
  end

  # GET /seccion_locals/new
  def new
    @seccion_local = SeccionLocal.new
  end

  # GET /seccion_locals/1/edit
  def edit
  end

  # POST /seccion_locals
  # POST /seccion_locals.json
  def create
    @seccion_local = SeccionLocal.new(seccion_local_params)

    respond_to do |format|
      if @seccion_local.save
        format.html { redirect_to @seccion_local, notice: 'Seccion local was successfully created.' }
        format.json { render :show, status: :created, location: @seccion_local }
      else
        format.html { render :new }
        format.json { render json: @seccion_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seccion_locals/1
  # PATCH/PUT /seccion_locals/1.json
  def update
    respond_to do |format|
      if @seccion_local.update(seccion_local_params)
        format.html { redirect_to @seccion_local, notice: 'Seccion local was successfully updated.' }
        format.json { render :show, status: :ok, location: @seccion_local }
      else
        format.html { render :edit }
        format.json { render json: @seccion_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seccion_locals/1
  # DELETE /seccion_locals/1.json
  def destroy
    @seccion_local.destroy
    respond_to do |format|
      format.html { redirect_to seccion_locals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccion_local
      @seccion_local = SeccionLocal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seccion_local_params
      params.require(:seccion_local).permit(:local_id, :seccion_id)
    end
end

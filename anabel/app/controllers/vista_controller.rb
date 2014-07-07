class VistaController < ApplicationController
  def index
    @v_comision_anual = VComisionAnual.all
  end

  def vturn
    @v_turnoespecial = VTurnoEspecial.all
  end

  def nopaga
    @v_cuota_nopaga = VCuotaNopaga.all
  end
end

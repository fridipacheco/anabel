class ResumensController < ApplicationController
  def index

    @res = ResumenVentatipo.all

  end

  def resu

    require "ruby-plsql"
    plsql.connect! "anabel","frida90","xe"

    plsql.pro_venta_tipro

    plsql.logoff

    @res = ResumenVentatipo.all

  end

  def delete

    ResumenVentatipo.delete_all

    respond_to do |format|
      format.html { redirect_to resumens_url }
    end
  end

end

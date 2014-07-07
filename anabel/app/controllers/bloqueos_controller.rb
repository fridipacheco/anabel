class BloqueosController < ApplicationController
  def index
    @tarj = Tarjet.where("tar_estado=?",1)
  end

  def gene
    require "ruby-plsql"
    plsql.connect! "anabel","frida90","xe"

    plsql.pro_bloqueotar

    plsql.logoff

    respond_to do |format|
      format.html { redirect_to bloqueos_url }
    end
  end
end

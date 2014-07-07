class FuncionController < ApplicationController
  def index
    @var3 = params[:var3]
    @var4 = params[:var4]
    @var5 = params[:var5]
    @var6 = params[:var6]

    require "ruby-plsql"
    plsql.connect! "anabel","frida90","xe"

    if params[:var] != nil
        @r = plsql.fun_promediocuotas(params[:var].to_i)
    end

    if params[:var1] !=nil and params[:var2] != nil
      @r1 = plsql.fun_promingreso_anual(params[:var1].to_i,params[:var2].to_i)
    end

    if @var3 !=nil and @var4 != nil and @var5 != nil and @var6 != nil
      @r2 = plsql.fun_cant_trabajador(@var3.to_i,@var4.to_i,@var5.to_i,@var6.to_date)
    end

    plsql.logoff
  end

end

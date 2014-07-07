class Despacho < ActiveRecord::Base
  belongs_to :vehiculo
  belongs_to :trabajador
  belongs_to :compra
  belongs_to :comuna
  belongs_to :estado_despacho
end

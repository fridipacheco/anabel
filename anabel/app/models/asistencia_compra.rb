class AsistenciaCompra < ActiveRecord::Base
  belongs_to :trabajador_seccion
  belongs_to :compra
end

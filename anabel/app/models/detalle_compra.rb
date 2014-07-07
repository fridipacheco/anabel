class DetalleCompra < ActiveRecord::Base
  belongs_to :producto_seccion
  belongs_to :compra
end

class DetallePedido < ActiveRecord::Base
  belongs_to :producto_bodega
  belongs_to :pedido
end

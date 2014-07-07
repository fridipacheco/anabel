class Pedido < ActiveRecord::Base
  belongs_to :proveedor
  belongs_to :trabajador
  has_many :bodega_pedidos, dependent: :destroy
  has_many :local_pedidos, dependent: :destroy
  has_many :detalles_pedidos, dependent: :destroy
end

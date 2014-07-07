class ProductoBodega < ActiveRecord::Base
  belongs_to :producto
  belongs_to :bodega
  has_many :detalles_pedidos, dependent: :destroy
  has_many :producto_seccions, dependent: :destroy
end

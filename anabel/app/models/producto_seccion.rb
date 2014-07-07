class ProductoSeccion < ActiveRecord::Base
  belongs_to :producto_bodega
  belongs_to :seccion_local
  has_many :detalle_compras, dependent: :destroy
end

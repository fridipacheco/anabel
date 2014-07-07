class Producto < ActiveRecord::Base
  belongs_to :tipo_producto
  has_many :producto_bodegas, dependent: :destroy
end

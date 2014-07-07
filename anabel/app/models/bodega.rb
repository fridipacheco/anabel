class Bodega < ActiveRecord::Base
  validates :bod_rut,  uniqueness: {case_sensitive: false, message: " ya esta registrado"}
  has_many :bodega_pedidos, dependent: :destroy
  has_many :producto_bodegas, dependent: :destroy
end

class Compra < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipo_pago
  belongs_to :tipo_compra
  has_many :pago_compras, dependent: :destroy
  has_many :detalle_compras, dependent: :destroy
  has_many :asistencia_compras, dependent: :destroy
  has_many :despachos, dependent: :destroy
end

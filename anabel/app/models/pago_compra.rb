class PagoCompra < ActiveRecord::Base
  belongs_to :compra
  belongs_to :tarjet
end

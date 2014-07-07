class EstadoDespacho < ActiveRecord::Base
  has_many :despachos, dependent: :destroy
end

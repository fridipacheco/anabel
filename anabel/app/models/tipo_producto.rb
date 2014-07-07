class TipoProducto < ActiveRecord::Base
  has_many :productos, dependent: :destroy
end

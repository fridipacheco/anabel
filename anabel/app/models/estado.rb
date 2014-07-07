class Estado < ActiveRecord::Base
  has_many :bodega_pedidos, dependent: :destroy
  has_many :local_pedidos, dependent: :destroy
end

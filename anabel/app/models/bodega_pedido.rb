class BodegaPedido < ActiveRecord::Base
  belongs_to :bodega
  belongs_to :estado
  belongs_to :pedido
end

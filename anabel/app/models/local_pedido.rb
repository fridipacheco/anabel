class LocalPedido < ActiveRecord::Base
  belongs_to :local
  belongs_to :pedido
  belongs_to :estado
end

class TipoPago < ActiveRecord::Base
  has_many :compras, dependent: :destroy
end

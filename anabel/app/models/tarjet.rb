class Tarjet < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipo_tarjet
  has_many :pago_compras, dependent: :destroy
end

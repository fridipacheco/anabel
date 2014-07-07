class Proveedor < ActiveRecord::Base
  validates :prov_rut,  uniqueness: {case_sensitive: false, message: " ya esta registrado"}
  has_many :pedidos, dependent: :destroy
end

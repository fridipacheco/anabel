class Trabajador < ActiveRecord::Base
  validates :tra_rut,  uniqueness: {case_sensitive: false, message: " ya esta registrado"}
  has_many :pedidos, dependent: :destroy
  has_many :cargo_trabajadors, dependent: :destroy
  has_many :locals, dependent: :destroy
  has_many :trabajador_seccions, dependent: :destroy
  has_many :despachos, dependent: :destroy

  has_many :v_turnoespecials
end

class Cliente < ActiveRecord::Base
  validates :cli_rut,  uniqueness: {case_sensitive: false, message: " ya esta registrado"}
  has_many :tarjeta, dependent: :destroy
  has_many :compras, dependent: :destroy
  has_many :tarjets, dependent: :destroy
end

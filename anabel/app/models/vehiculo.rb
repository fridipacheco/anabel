class Vehiculo < ActiveRecord::Base
  validates :veh_patente,  uniqueness: {case_sensitive: false, message: " ya esta registrado"}
  belongs_to :modelo
  has_many :despachos, dependent: :destroy
end

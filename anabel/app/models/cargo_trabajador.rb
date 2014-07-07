class CargoTrabajador < ActiveRecord::Base
  belongs_to :trabajador
  belongs_to :estado_habilitado
  belongs_to :tipo_trabajador
  has_many :usuarios, dependent: :destroy
end

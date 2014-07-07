class TrabajadorSeccion < ActiveRecord::Base
  belongs_to :seccion_local
  belongs_to :trabajador
  belongs_to :turno
  has_many :asistencia_compras, dependent: :destroy
end

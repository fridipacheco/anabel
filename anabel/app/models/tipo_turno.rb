class TipoTurno < ActiveRecord::Base
  has_many :turnos, dependent: :destroy
end

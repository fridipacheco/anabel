class Turno < ActiveRecord::Base
  belongs_to :tipo_turno
  has_many :trabajador_seccions, dependent: :destroy
end

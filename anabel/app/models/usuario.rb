class Usuario < ActiveRecord::Base
  belongs_to :tipo_usuario
  belongs_to :cargo_trabajador
  belongs_to :estado_habilitado
end

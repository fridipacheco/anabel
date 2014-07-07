class SeccionLocal < ActiveRecord::Base
  belongs_to :local
  belongs_to :seccion
  has_many :producto_seccions, dependent: :destroy
  has_many :trabajador_seccions, dependent: :destroy

  has_many :v_turnoespecials
end

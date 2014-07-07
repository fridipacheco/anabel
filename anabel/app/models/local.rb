class Local < ActiveRecord::Base
  belongs_to :comuna
  belongs_to :trabajador
  has_many :seccion_locals, dependent: :destroy
  has_many :local_pedidos, dependent: :destroy
end

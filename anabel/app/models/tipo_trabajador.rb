class TipoTrabajador < ActiveRecord::Base
  has_many :cargo_trabajadors, dependent: :destroy
end

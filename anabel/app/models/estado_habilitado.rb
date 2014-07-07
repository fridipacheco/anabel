class EstadoHabilitado < ActiveRecord::Base
  has_many :cargo_trabajadors, dependent: :destroy
  has_many :usuarios, dependent: :destroy
end

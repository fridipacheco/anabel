class TipoTarjet < ActiveRecord::Base
  has_many :tarjets, dependent: :destroy
end

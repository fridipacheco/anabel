class Seccion < ActiveRecord::Base
  has_many :seccion_locals, dependent: :destroy
end

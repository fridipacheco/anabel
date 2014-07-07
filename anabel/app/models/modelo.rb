class Modelo < ActiveRecord::Base
  belongs_to :marca
  has_many :marcas, dependent: :destroy
end

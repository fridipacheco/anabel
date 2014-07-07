class TipoUsuario < ActiveRecord::Base
  has_many :usuarios, dependent: :destroy
end

class Marca < ActiveRecord::Base
  has_many :modelos, dependent: :destroy
end

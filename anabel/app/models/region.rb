class Region < ActiveRecord::Base
  validates :reg_nombre, presence: {message: " es un campo obligatorio "}
  has_many :comunas, dependent: :destroy
end

class Comuna < ActiveRecord::Base
  validates :com_nombre,:region_id, presence: {message: " es un campo obligatorio "}
  belongs_to :region
  has_many :locals, dependent: :destroy
  has_many :despachos, dependent: :destroy
end

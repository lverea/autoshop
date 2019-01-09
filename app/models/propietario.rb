class Propietario < ApplicationRecord
  belongs_to :vehiculo
  validates :nombre, presence: true
end

class Vehiculo < ApplicationRecord
	has_many :propietarios
	validates :dominio, presence: true
end

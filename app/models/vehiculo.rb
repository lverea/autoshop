class Vehiculo < ApplicationRecord
	validates :dominio, presence: true
end

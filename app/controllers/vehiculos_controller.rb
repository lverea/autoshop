class VehiculosController < ApplicationController
	def index
	end
	
	def new
		@vehiculo = Vehiculo.new
	end
	
	def create
		@vehiculo = Vehiculo.new(vehiculo_params)
		if @vehiculo.save
			flash[:notice] = "Vehículo creado."
			redirect_to @vehiculo
		else
		end
	end
	
	def show
		@vehiculo = Vehiculo.find(params[:id])
	end
	
	private
	
	def vehiculo_params
		params.require(:vehiculo).permit(:dominio, :descripcion)
	end
	
end

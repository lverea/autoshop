class VehiculosController < ApplicationController
	def index
		@vehiculos= Vehiculo.all
	end
	
	def new
		@vehiculo = Vehiculo.new
	end
	
	def edit 
		@vehiculo = Vehiculo.find(params[:id])
	end
	
	def create
		@vehiculo = Vehiculo.new(vehiculo_params)
		if @vehiculo.save
			flash[:notice] = "Vehículo creado."
			redirect_to @vehiculo
		else
			flash.now[:alert] = "Vehículo no creado."
			render "new"
		end
	end
	
	def update
		@vehiculo = Vehiculo.find(params[:id])
		if @vehiculo.update(vehiculo_params)
			flash[:notice]= "Vehículo actualizado."
			redirect_to @vehiculo
		else
			flash.now[:alert]="Vehículo no actualizado."
			render "edit"
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

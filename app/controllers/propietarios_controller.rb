class PropietariosController < ApplicationController
	before_action :set_vehiculo
	before_action :set_propietario, only: [:show, :edit, :update, :destroy]
	
	def new
		@propietario=@vehiculo.propietarios.build
	end
	
	def create
		@propietario = @vehiculo.propietarios.build(propietario_params)
		if @propietario.save
			flash[:notice] = "Propietario guardado."
			redirect_to [@vehiculo,@propietario]
		else
			flash.now[:alert] = "Propietario no guardado."
			render "new"
		end
	end
	
	def show #el @propietario se carga desde el set_propietario por eso no va codigo
	end
	
	private
	
	def propietario_params
		params.require(:propietario).permit(:nombre, :celular)
	end
	
	def set_vehiculo
		@vehiculo = Vehiculo.find(params[:vehiculo_id])
	end
	
	def set_propietario
		@propietario = @vehiculo.propietarios.find(params[:id])
	end
end

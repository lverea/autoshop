require "rails_helper"
RSpec.feature "Usuarios pueden crear vehiculos" do 
	scenario "con atributos válidos" do
		visit "/"
		click_link "Vender vehiculo"
		fill_in "Dominio", with: "ICN708"
		fill_in "Descripción", with: "Chevrolet Aveo muy bueno!"
		click_button "Terminar"
		expect(page).to have_content "Vehículo creado."
		
		
	end
end
	
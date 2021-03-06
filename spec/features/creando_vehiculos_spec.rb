require "rails_helper"
RSpec.feature "Usuarios pueden crear vehiculos" do 
	before do
		visit "/"
		click_link "Vender vehiculo"
	end
	
	scenario "con atributos válidos" do
		fill_in "Dominio", with: "ICN708"
		fill_in "vehiculo_descripcion", with: "Chevrolet Aveo muy bueno!"
		click_button "Guardar"
		expect(page).to have_content "Vehículo creado."
	end
	scenario "con campos inválidos" do 
		click_button "Guardar"
		expect(page).to have_content "Vehículo no creado"
		expect(page).to have_content "Dominio can't be blank"
	end
end
	
require "rails_helper"
RSpec.feature "Usuarios pueden editar vehículos" do
	before do
		FactoryBot.create(:vehiculo, dominio: "ABC999")
		visit "/"
		click_link "ABC999"
		click_link "Modificar"	
	end
	scenario "con atributos válidos" do	
		
		fill_in "Dominio",with: "DDD050"
		click_button "Guardar"
		expect(page).to have_content "Vehículo actualizado."
		expect(page).to have_content "DDD050"
	end
	scenario "rechazar atributos inválidos" do
		fill_in "Dominio", with: ""
		click_button "Guardar"
		expect(page).to have_content "Vehículo no actualizado."
	end
	
end
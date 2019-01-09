require "rails_helper"
RSpec.feature "Usuarios pueden cargar datos propietarios" do
	before do
		vehiculo=FactoryBot.create(:vehiculo, dominio: "ABC999")
		visit vehiculo_path(vehiculo)
		click_link "Propietario"
	end
	scenario "con datos validos" do
		fill_in "Nombre", with: "bill perez"
		click_button "Guardar"
		expect(page).to have_content "Propietario guardado."
	end
	scenario "con datos inválidos" do
		click_button "Guardar"
		expect(page).to have_content "Propietario no guardado."
	end
end
require "rails_helper"
RSpec.feature "Usuarios pueden ver vehículos" do
	scenario "con los detalles del vehiculo" do	
		vehiculo = FactoryBot.create(:vehiculo, dominio: "ICN708")
		visit "/"
		click_link "ICN708"
		expect(page.current_url).to eq vehiculo_url(vehiculo)
	end
end
	
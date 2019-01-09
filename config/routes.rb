Rails.application.routes.draw do
  root "vehiculos#index"
  resources :vehiculos do
	resources :propietarios
  end	
	
end

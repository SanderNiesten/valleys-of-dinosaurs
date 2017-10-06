Rails.application.routes.draw do
  root 'dinosaurs#index'

  get 'dinosaurs' => 'dinosaur#index'
  get 'dinosaurs/new' => "dinosaurs#new", as: :new_dinosaur
  get 'dinosaurs/:id' => 'dinosaurs#show', as: :dinosaur

  post "dinosaurs" => "dinosaurs#create"

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

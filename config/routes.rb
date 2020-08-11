Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pets
  get "pets" => "pets#index"
  get "pets/new" => "pets#new", as: :new_pet
  get "pets/:id" => "pets#show", as: :pet
  post "pets" => "pets#create"
  get "pets/:id/edit" => "pets#edit", as: :edit_pet
  patch "pets/:id" => "pets#update"
  delete "pets/:id" => "pets#destroy"

end

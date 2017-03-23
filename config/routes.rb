Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root to: "contacts#index"


  # Index
  get "/contacts" => "contacts#index"

	# Add new contacts
  get "/contacts/new" => "contacts#new"
  post "/contacts" => "contacts#create"

  get "/contacts/all_johns" => "contacts#all_johns"

  # Edit contacts
  get "/contacts/:id" => "contacts#show"
  get "contacts/:id/edit" => "contacts#edit"
  patch "contacts/:id" => "contacts#update"
  delete "contacts/:id" => "contacts#destroy"

  # Users - Signup
  get "/signup" => "users#new"
  post "/users" => "users#create"


  # Users - Login
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
end

Rails.application.routes.draw do
    
    resources :lists

    get "/lists/:id/edit" => "lists#edit"

    get "/lists/:id" => "lists#show", as: :show_list
  
    get "/lists/index" => "lists#index"

    root "lists#index"
    
    devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

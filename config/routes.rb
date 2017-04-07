Rails.application.routes.draw do
    
  devise_for :testers
    resources :lists do
    	resources :todos
    	put :favourite, on: :member
    end

    resources :favourite_lists, only: [:index, :create, :destroy]

    get "/lists/:id/edit" => "lists#edit"

    get "/lists/:id" => "lists#show", as: :show_list
      
    root "lists#index"
    
    devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

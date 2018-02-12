Rails.application.routes.draw do

  root "dashboard#index"

 get "/login", to: "sessions#new"
 post "/login", to: "sessions#create"
 delete "/logout", to: "sessions#destroy"


    resources :users, only:[:new, :create, :show] do
      resources :ideas
    end
  end

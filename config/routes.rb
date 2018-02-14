Rails.application.routes.draw do

  root "dashboard#index"

 get "/login", to: "sessions#new"
 post "/login", to: "sessions#create"
 delete "/logout", to: "sessions#destroy"


    resources :users, only:[:new, :create, :show] do
      resources :ideas
    end
    namespace :admin do
    resources :categories, only: [:index, :new, :destroy, :edit, :update, :create]
  end
end

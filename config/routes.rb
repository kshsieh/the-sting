Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :issues, only: [:show]
  resources :scripts, only: [:show]

  resources :topics, only: [:index, :show] do
    resources :issues, only: [:index]
  end

  namespace :admin do
    resources :topics do
      resources :issues
    end

    resources :issues do
      resources :scripts
    end
  end

  get "/admin/", to: "admin/topics#index"

  root 'home#show'
end

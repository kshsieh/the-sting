Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :issues, only: [:show]
  resources :scripts, only: [:show]

  resources :topics, only: [:index, :show] do
    resources :issues, only: [:index]
  end

  root 'home#show'
end

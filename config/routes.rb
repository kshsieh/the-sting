Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :topics, only: [:index, :show] do
    resources :issues, only: [:index, :show]
  end

  root 'home#show'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :past_events do
    resources :pictures, only: [:new, :create, :index]
  end

  resources :future_events

  resources :pictures, only: [:destroy]
end

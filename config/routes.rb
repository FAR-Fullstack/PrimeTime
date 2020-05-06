Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :past_events do
    collection do
    	get "public_events"
    	get "private_events"
      delete "delete_one_photo"
    end
  end

  resources :future_events

  resources :pictures, only: [:destroy]
end

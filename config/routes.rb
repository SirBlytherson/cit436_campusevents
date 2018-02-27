Rails.application.routes.draw do
  resources :subscriptions
  resources :attendees
  resources :locations
  resources :meetings
  resources :sponsors
  resources :events
  
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

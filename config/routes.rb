Rails.application.routes.draw do
  resources :spells
  resources :characterspells
  resources :characters
  resources :parties
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

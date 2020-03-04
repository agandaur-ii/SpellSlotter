Rails.application.routes.draw do
  resources :alignments
  resources :backgrounds
  resources :characterclasses
  resources :races
  resources :spells
  resources :characters
  resources :parties
  resources :players
end

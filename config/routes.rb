Rails.application.routes.draw do
  get '/characters/edit/spells', to: 'characters#spell_select'
  resources :alignments
  resources :backgrounds
  resources :characterclasses
  resources :characterspells #, only: [:edit, :update]
  resources :races
  resources :spells
  resources :characters
  resources :parties
  resources :players
end

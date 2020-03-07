Rails.application.routes.draw do
  get '/characters/edit/spells', to: 'characters#spell_select'
  get '/members/edit', to: 'parties#member_edit'
  get '/members/update', to: 'parties#member_update'
  delete "/members/remove", to: 'parties#remove_members'
  resources :backgrounds
  resources :characterclasses
  resources :characterspells , only: [:create]
  resources :races
  resources :spells
  resources :characters
  resources :parties
  resources :players
end 

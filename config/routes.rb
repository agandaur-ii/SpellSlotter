Rails.application.routes.draw do
  get '/characters/edit/spells', to: 'characters#spell_select'
  get '/party/members/edit', to: 'parties#member_edit'
  resources :backgrounds
  resources :characterclasses
  resources :characterspells , only: [:create]
  resources :races
  resources :spells
  resources :characters
  resources :parties
  resources :players
end

Rails.application.routes.draw do
  resources :towns, except: [:show]
  resources :zones, except: [:show]

  root 'zones#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

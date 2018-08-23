Rails.application.routes.draw do
  root 'static_pages#index'
  
  resources :emails
  get '/new', to: 'emails#new'
end

Rails.application.routes.draw do
  resources :feature_flags, except: :show
  get '/feature_flags/:name', to: 'feature_flags#show'
  root 'feature_flags#index'
end

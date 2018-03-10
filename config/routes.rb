Rails.application.routes.draw do
  resources :feature_flags
  root 'feature_flags#index'
end

Rails.application.routes.draw do
  resources :complaints
  
  root to: 'complaints#index'
end

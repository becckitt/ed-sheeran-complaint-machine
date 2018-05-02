Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :complaints
    end
  end
  
  root to: 'welcome#index'
end

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "tops#index"
  
  resources :users, only: :show
  resources :products do
    collection do
      get 'search'
    end
  end
  resources :cosmetics
 
end

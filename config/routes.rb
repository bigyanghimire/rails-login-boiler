Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  get 'home/index'
  authenticated :user do
    root :to => 'dashboard#index', :as => :authenticated_root
  end
  
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

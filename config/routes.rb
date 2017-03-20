Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # devise_scope :user do
  #   get 'users', :to => 'users#index'
  # end
  
  resources :users
  resources :castingcalls
  
  root 'welcome#home'
end

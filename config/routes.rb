Rails.application.routes.draw do
  resources :posts, only: [:show, :index]

  root 'posts#index'

  namespace :admin do
    resources :posts 
  end

  devise_for :users

  # get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: 'pages' do
    get 'about'
  end
end

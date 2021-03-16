Rails.application.routes.draw do
  root 'pages#about'
  devise_for :users
  # get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: 'pages' do
    get 'about'
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/animals/find", to: "animals#find"
  resources :animals, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

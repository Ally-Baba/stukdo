Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end

  devise_for :users
  get 'pages/home'
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about' => "pages#about"
  get 'test' => "pages#test"
end

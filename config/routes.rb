Rails.application.routes.draw do
  use_doorkeeper do 
    skip_controllers :authentications, :applications, :authorized_applications
  end
  root "bookmarks#index"
  devise_for :users
  namespace :api do
    resources :bookmarks, only: %i[index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

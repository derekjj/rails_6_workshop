Rails.application.routes.draw do
  
  resources :categories
  root "events#index"

  resources :events do
    resources :registrations
    resources :likes
  end

  resources :users
  get "signup" => "users#new"

  resource :session, only: [:new, :create, :destroy]

end
 
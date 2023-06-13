Rails.application.routes.draw do
  devise_for :users
  root to: "users#landing"
  get "/my_events", to: "users#home", as: :my_events
  resources :users, only: %i[show update edit] do
    resources :friends, only: %i[index create update]
  end
  resources :chatrooms, only: %i[show create] do
    resources :messages, only: %i[create]
  end
  resources :events do
    resources :participants, only: %i[create update]
    resources :posts, except: %i[index show edit new]
  end
  resources :posts, only: [] do
    resources :comments, only: %i[create update]
  end
  resources :comments, only: :destroy
  resources :participants, only: :destroy
  resources :likes, only: %i[create destroy]
  resources :friends, only: %i[destroy]
end

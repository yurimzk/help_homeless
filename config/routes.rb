Rails.application.routes.draw do
  devise_for :users
  root to: "users#home" # checar ???
  resources :user, only: %i[show update edit] do
    resources :friends, only: %i[index create destroy]
  end
  resources :chatrooms, only: %i[show create] do
    resources :messages, only: %i[create]
  end
  resources :events do
    resources :participants, only: %i[create update]
    resources :posts, except: %i[index show edit new] do
      resources :comments, only: %i[create update]
    end
  end
  resources :comments, only: :destroy
  resources :participants, only: :destroy
end

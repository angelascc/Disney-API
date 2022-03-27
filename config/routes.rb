Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters, only: [:index, :show, :update, :create, :destroy]
      resources :movies, only: [:index, :show, :update, :create, :destroy]
    end
  end
end

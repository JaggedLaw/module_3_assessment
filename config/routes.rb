Rails.application.routes.draw do
  get 'search/index'

  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      resources :items, only: [:index, :show, :destroy, :create] do
        get :items, to: "items#index"
      end

    end
  end

  post :search, to: "search#index"
end

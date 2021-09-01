Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root to: 'pages#landing'
  end

  authenticated :user do
    root to: 'dashboards#show', as: :user_root
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :onboarding, only: [:new] do
  #   resources :new
  # end

  resource :payment, only: [:show] do
    member do
      get :success
    end
  end

  resource :banner_bear_webhooks, only: :create

  resource :onboarding, only: [:new, :create]

  resources :nonprofits, only: [:show, :index]

  resources :donation_sessions, only: [:create, :edit, :update]
end

Rails.application.routes.draw do

  root 'projects#index'
  resources :scores
  resources(:projects) do
    resources(:memberships, only: [:new, :create, :show, :destroy, :index, :update])
    resources(:recommendations, only: [:show, :index])

    collection do
      get 'mine'
    end
  end

  resources :users, only: [:new, :create, :show] do
    get :autocomplete_skill_name, :on => :collection
  end

  resources :sessions, only: [:new,:create, :destroy]

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "notification" => "users#notification"

end

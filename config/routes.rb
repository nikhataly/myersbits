Rails.application.routes.draw do


  root :to => "projects#startpage"

  resources :scores
  resources(:projects) do
    resources(:memberships, only: [:new, :create, :show, :destroy, :index, :update])
    resources(:recommendations, only: [:show, :index])

    collection do
      get 'mine'
    end
  end

  resources :users, only: [:index, :new, :create, :show] do
    get :autocomplete_skill_name, :on => :collection

  end

  resources(:compatibilities, only: [:index, :show])
  resources :personalities, only: [:index, :show]

  resources :sessions, only: [:new, :create, :destroy]

  resources :personalities, only: [:index, :show]

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "notification" => "users#notification"

end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  root "main#index"

  resource :registration
  resource :session
  resource :password_reset
  resource :password
  resource :choice

  resources :conducteurs do
    resources :vehicules
  end

  resource :session_conducteur
  resource :accueil

  get "/choice/:variable", to: "choices#show", as: "choice_var"
  get "/registration/new/:variable", to: "registrations#new", as: "new_registration_var"
  get "/session/new/:variable", to: "sessions#new", as: "new_session_var"
  get "/password_reset/new/:variable", to: "password_resets#new", as: "new_password_reset_var"

  # Defines the root path route ("/")
  # root "posts#index"
end

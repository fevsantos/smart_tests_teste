Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: 'pages#home'
  resources :quizzes do
    resources :questions, only: [ :create, :show, :new ] do
      resources :options, only: [ :create, :new ]
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

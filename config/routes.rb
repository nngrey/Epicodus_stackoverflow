StackOverflow::Application.routes.draw do
  root :to => 'questions#index'
  resources :questions do
    resources :answers
  end
  resources :users do
    resources :questions, :except => [:new, :create]
    resources :answers
  end
  resources :answers
  resources :sessions


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end

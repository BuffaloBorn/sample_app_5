Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',      to: 'static_pages#help'#, as: 'helf'
  get  '/about',     to: 'static_pages#about'
  get  '/contact',   to: 'static_pages#contact'
  get  '/signup',    to: 'users#new'
  post '/signup',    to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  if Rails.env.development?
   mount LetterOpenerWeb::Engine, at: "/letter_opener"
 end
 resources :password_resets,     only: [:new, :create, :edit, :update]
 resources :microposts,          only: [:create, :destroy]
 resources :relationships,       only: [:create, :destroy]
end

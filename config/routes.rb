Rails.application.routes.draw do
  resources :projects
  resources :tasks do
    resources :comments, only: %i[create edit update]
  end
  get '/about_me', to: 'static_pages#about_me'
  get '/users', to: 'users#show'
  get '/', to: 'projects#index'
  resources :users, only: %i[show new create edit update]

  resource :session, only: %i[new create destroy]
end

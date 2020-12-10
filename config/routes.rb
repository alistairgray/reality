Rails.application.routes.draw do

  root to: 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users
  get '/profile' => 'users#profile'
  resources :properties
  resources :applications
  post 'applications/:id' => 'applications#edit'
  resources :feedbacks

end

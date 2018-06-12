Rails.application.routes.draw do

  namespace :api  do
    namespace :v1 do
        get '/users/:id/websites', to: 'users#userWebsites'
        resources :users
        post '/login', to: 'auth#create'
        get '/current_user', to: 'auth#show'
        resources :websites
        get '/targets/:id', to: 'targets#targetWebsites'
        resources :targets
    end
  end
end

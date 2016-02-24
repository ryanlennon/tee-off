Rails.application.routes.draw do
  devise_for :users

  
  get '/' => 'courses#index'
  get '/courses' => 'courses#index'
  get '/courses/new' => 'courses#new'
  post '/courses' => 'courses#create'
  get 'courses/:id/edit' => 'courses#edit'
  patch 'courses/:id' => 'courses#update'
  delete 'courses/:id' => 'courses#destroy'
  get '/courses/:id' => 'courses#show'

  get '/teetimes' => 'tee_times#index'
  get '/teetimes/new' => 'tee_times#new'
  post '/teetimes' => 'tee_times#create'
  get '/teetimes/:id/edit' => 'tee_times#edit'
  patch '/teetimes/:id' => 'tee_times#update'
  delete '/teetimes/:id' => 'tee_times#destroy'
  get 'teetimes/:id' => 'tee_times#show'

  namespace :api do
    namespace :v1 do
      get 'teetimes' => 'tee_times#index'
      get 'courses' => 'courses#index'
      post '/teetimes' => 'tee_times#create'
    end
  end
end

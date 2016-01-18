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

  get '/forecasts' => 'forecasts#index'
  get '/forecasts/new' => 'forecasts#new'
  post '/forecasts' => 'forecasts#create'
  get '/forecasts/:id/edit' => 'forecasts#edit'
  patch '/forecasts/:id' => 'forecasts#update'
  delete '/forecasts/:id' => 'forecasts#destroy'
  get '/forecasts/:id' => 'forecasts#show'

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
    end
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

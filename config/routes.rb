Rails.application.routes.draw do
  devise_for :companies
  get 'projects/create' => 'projects#create'

  post 'projects/create' => "projects#create"
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end  
  
  resources :forums do
    resources :messages
  end
  
  post 'projects/:id/approve/' => 'projects#approve', :as => :approve_project

  namespace :admin do
  get 'projects/new'
  end

  namespace :admin do
  get 'projects/create'
  end

  namespace :admin do
  get 'projects/show'
  end

  namespace :admin do
  get 'projects/index'
  end

  root 'info#home'

  get 'info/about'

  get 'info/client'

  get 'info/mentor'

  get 'info/student'

  get 'info/projects'
  
  #namespaced route
  namespace :admin do
    resources :users
  end

  # rake routes to see all included devise paths
  devise_for :users
  
  # user dashboard
  get 'users/:id' => 'users#show', :as => :user
  
  get 'users' => 'users#index'
  get 'projects' => 'projects#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  #get 'contact' => 'contact#new'
  resources "contacts", only: [:new, :create]
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

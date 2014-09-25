Rails.application.routes.draw do

  root to: "pages#home"

  get "concept" => "pages#concept"
  get "location" => "pages#location"
  get "calendar" => "pages#calendar"
  get "food" => "pages#food"
  get "space" => "pages#space"
  get "activity" => "pages#activity"
  get "rent" => "pages#rent"

  namespace :admin do
    get "/" => "users#new_session"
    post "/" => "users#create_session"
    delete "/" => "users#destroy_session"

    resources :homes, :only => [:edit, :update]
    resources :concepts, :only => [:edit, :update]
    #resources :locations, :only => [:edit, :update]
    #resources :calender, :only => [:edit, :update]
    resources :foods, :only => [:edit, :update]
    resources :spaces, :only => [:edit, :update]
    resources :rents, :only => [:edit, :update]
    resources :activities, :only => [:edit, :update]
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

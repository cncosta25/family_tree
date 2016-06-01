Rails.application.routes.draw do
  # Routes for the Family resource:
  # CREATE
  get "/families/new", :controller => "families", :action => "new"
  post "/create_family", :controller => "families", :action => "create"

  # READ
  get "/families", :controller => "families", :action => "index"
  get "/families/:id", :controller => "families", :action => "show"

  # UPDATE
  get "/families/:id/edit", :controller => "families", :action => "edit"
  post "/update_family/:id", :controller => "families", :action => "update"

  # DELETE
  get "/delete_family/:id", :controller => "families", :action => "destroy"
  #------------------------------

  # Routes for the Member resource:
  # CREATE
  get "/members/new", :controller => "members", :action => "new"
  post "/create_member", :controller => "members", :action => "create"

  # READ
  get "/members", :controller => "members", :action => "index"
  get "/members/:id", :controller => "members", :action => "show"

  # UPDATE
  get "/members/:id/edit", :controller => "members", :action => "edit"
  post "/update_member/:id", :controller => "members", :action => "update"

  # DELETE
  get "/delete_member/:id", :controller => "members", :action => "destroy"
  #------------------------------

  # Routes for the Relationship resource:
  # CREATE
  get "/relationships/new", :controller => "relationships", :action => "new"
  post "/create_relationship", :controller => "relationships", :action => "create"

  # READ
  get "/relationships", :controller => "relationships", :action => "index"
  get "/relationships/:id", :controller => "relationships", :action => "show"

  # UPDATE
  get "/relationships/:id/edit", :controller => "relationships", :action => "edit"
  post "/update_relationship/:id", :controller => "relationships", :action => "update"

  # DELETE
  get "/delete_relationship/:id", :controller => "relationships", :action => "destroy"
  #------------------------------

  devise_for :users
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

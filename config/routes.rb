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
  root "families#index"

end

Rails.application.routes.draw do

  # HOME PAGE?  
  root to: 'pages#home'


  # Routes for the Bid resource:

  # CREATE
  post("/insert_bid", { :controller => "bids", :action => "create" })
          
  # READ
  get("/bids", { :controller => "bids", :action => "index" })
  
  get("/bids/:path_id", { :controller => "bids", :action => "show" })
  
  # UPDATE
  
  post("/modify_bid/:path_id", { :controller => "bids", :action => "update" })
  
  # DELETE
  get("/delete_bid/:path_id", { :controller => "bids", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Product resource:

  # CREATE
  post("/insert_product", { :controller => "products", :action => "create" })
          
  # READ
  get("/products", { :controller => "products", :action => "index" })
  
  get("/products/:path_id", { :controller => "products", :action => "show" })
  
  # UPDATE
  
  post("/modify_product/:path_id", { :controller => "products", :action => "update" })
  
  # DELETE
  get("/delete_product/:path_id", { :controller => "products", :action => "destroy" })

  #------------------------------

end

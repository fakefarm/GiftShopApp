Souvy::Application.routes.draw do

  get "logins/new"

  get "logins/create"

  get "logins/destroy"

	root :to => 'products#index'
	resources :reviews, :brands, :products


	get "logins/new", :as => :new_login
	post "logins/create", :as => :logins
	delete "logout" => 'logins#destroy', :as => :logout
	
# Add this after I do sessions work
# get "/brands/:id" => 'brands#show', :as => :brand
 

end

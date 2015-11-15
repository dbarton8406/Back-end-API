Rails.application.routes.draw do

post "/treasurers", to: "treasurers#create"
post "/treasurers/login", to: "treasurers#login"
get "treasurers/:id", to: "treasurers#index"

post "/bills/create", to: "bills#create"
get "/bills/:treasurer_id", to: "bills#index"
put "/bills/update", to: "bills#update"


get "/roomates/:treasurer_id", to: "roomates#index"
post "/roomates/login", to: "roomates#login"
post "/roomates", to: "roomates#create"



resources :posts
resources :comments





end

Rails.application.routes.draw do

post "/treasurers", to: "treasurers#create"
post "/treasurers/login", to: "treasurers#login"
get "treasurers/:id", to: "treasurers#index"
post "/treasurers/destroy/:id", to: "treasurers#destroy"

post "/bills/create", to: "bills#create"
get "/bills/:treasurer_id", to: "bills#index"
get "bills/assignee/:assignee", to: "bills#assignee"
get "/bills/bill/:id", to: "bills#show"
put "/bills/:id", to: "bills#update"
post "/bills/destroy/:id", to: "bills#destroy"

get "/roomates/:treasurer_id", to: "roomates#index"
post "/roomates/login", to: "roomates#login"
post "/roomates", to: "roomates#create"
post "/roomates/destroy/:id", to: "roomates#destroy"



resources :post
resources :comments





end

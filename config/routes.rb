Rails.application.routes.draw do

post "/treasurers/login", to: "treasurers#login"

post "/bills/create/roomate", to: "bills#roomate"
post "/bills/create/treasurer", to: "bills#treasurer"

get "/roomates/:id", to: "roomates#index"
post "roomates/login", to: "roomates#login"

resources :treasurers

resources :posts
resources :comments





end

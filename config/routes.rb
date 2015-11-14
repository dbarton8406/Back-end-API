Rails.application.routes.draw do

post "/treasurers/login", to: "treasurers#login"

post "/bills/create/roomate", to: "bills#roomate"
post "/bills/create/treasurer", to: "bills#treasurer"

resources :treasurers
resources :roomates
resources :posts
resources :comments





end

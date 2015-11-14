Rails.application.routes.draw do

post "/treasurers/login", to: "treasurers#login"

resources :treasurers
resources :roomates
resources :bills
resources :posts
resources :comments





end

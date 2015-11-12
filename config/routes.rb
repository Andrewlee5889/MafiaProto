Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root "user#login"
  
  get '/user/:id', to: "user#show"
  post '/user/create', to: "user#create"
  post '/user/update', to: "user#update"

end

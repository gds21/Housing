Rails.application.routes.draw do

  resources :apps, controller: :app_data
  resources :items
  resources :lists

  put "image", to: "image#create"
end

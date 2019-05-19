Rails.application.routes.draw do

  resources :apps, controller: :app_data, constraints: lambda { |req|
    ["220.133.42.141"].include?(req.remote_ip)}
  resources :items,constraints: lambda { |req|
    ["220.133.42.141"].include?(req.remote_ip)}
  resources :lists,constraints: lambda { |req|
    ["220.133.42.141"].include?(req.remote_ip)}

  put "image", to: "image#create"
end

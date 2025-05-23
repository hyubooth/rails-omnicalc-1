Rails.application.routes.draw do
  root "square#new"

  get "/payment/new", to: "payment#new"
  get "/payment/results", to: "payment#results"

  get "/square/new", to: "square#new"
  get "/square/results", to: "square#results"

  get "/square_root/new", to: "square_root#new"
  get "/square_root/results", to: "square_root#results"

  get "/random/new", to: "random#new"
  get "/random/results", to: "random#results"
  
end

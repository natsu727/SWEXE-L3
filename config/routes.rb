Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tweets/index"
  root "tweets#index"
  
  get "tweets/new" , to: "tweets#new"
  post "tweets" , to: "tweets#create"
  
  get "tweets/:id" , to: "tweets#show"
  
  delete "tweets/:id" , to: "tweets#destroy"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

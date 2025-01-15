Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get all restaurants in index
  get "restaurants", to: "restaurants#index"

  # post a new restaurant
  get "restaurants/new", to: "restaurants#new", as: :restaurant_new
  post "restaurants", to: "restaurants#create"
  # get one restaurant with show
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  #post a review
  get "restaurants/:id/reviews/new", to: "reviews#new", as: :review_new
  post "restaurants/:id/reviews", to: "reviews#create"
end

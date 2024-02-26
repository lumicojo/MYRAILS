Rails.application.routes.draw do

  resources :people



  #get "/admin_people_screen" => "people#admin_people_screen"
  # post "/admin_people_screen_test" =>  "people#admin_people_screen_test"

  # resources :organization do
  #   resources :people, shallow: true
  # end
  #   resources :people, shallow: true do
  #     #creating static pages
  #     get "/about_us" => "people#peolpe#about_us"
  #     #(then we create new controller)  rails g controllers pages
  #     get "/about_us" => "pages#about_us"



  # namespace :admin do

  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  #root "posts#index"
end




